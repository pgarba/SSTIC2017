#pragma once
#include <vector>

enum TType {
	Reg = 1,
	Memory = 2
};

class TValue {
public:
	virtual TType getType() {
		return Type;
	}

	TType Type;
};

class TReg : TValue {
public:
	TReg(int Register) {
		this->Register = Register;
		this->Type = TType::Reg;
	}

	int getRegister() {
		return Register;
	}
private:
	int Register;
};

class TMemory : TValue {
public:
	TMemory(unsigned int Offset) {
		this->Offset = Offset;
		this->Type = TType::Memory;
	}

	unsigned int getOffset() {
		return Offset;
	}
private:
	unsigned int Offset;
};

class TaintEngine {
public:
	TaintEngine() {
		TaintAll = false;
	};
	~TaintEngine() {};

	bool isTaintedReg(int Reg) {
		if (TaintAll == true) {
			return true;
		}
		for (auto Iter = TaintedValues.begin(); Iter != TaintedValues.end(); ++Iter) {
			if ((*Iter)->getType() == TType::Reg) {
				TReg *R = (TReg *) *Iter;
				if (R->getRegister() == Reg) {
					return true;
				}
			}
		}
		return false;
	}

	bool isTaintedMemory(unsigned int Offset) {
		if (TaintAll == true) {
			return true;
		}
		for (auto Iter = TaintedValues.begin(); Iter != TaintedValues.end(); ++Iter) {
			if ((*Iter)->getType() == TType::Memory) {
				TMemory *M = (TMemory *)*Iter;
				if (M->getOffset() == Offset) {
					return true;
				}
			}
		}
		return false;
	}

	void addReg(int Reg) {
		if (this->isTaintedReg(Reg) == false) {
			TaintedValues.push_back((TValue *) new TReg(Reg));
		}
	}

	void removeReg(int Reg) {
		for (auto Iter = TaintedValues.begin(); Iter != TaintedValues.end(); ++Iter) {
			if ((*Iter)->getType() == TType::Reg) {
				TReg *R = (TReg *)*Iter;
				if (R->getRegister() == Reg) {
					TaintedValues.erase(Iter);
					return;
				}
			}
		}
	}


	void addMemory(unsigned int Offset) {
		if (this->isTaintedMemory(Offset) == false) {
			TaintedValues.push_back((TValue *) new TMemory(Offset));
		}
	}

	void removeMemory(unsigned int Offset) {
		for (auto Iter = TaintedValues.begin(); Iter != TaintedValues.end(); ++Iter) {
			if ((*Iter)->getType() == TType::Memory) {
				TMemory *M = (TMemory *)*Iter;
				if (M->getOffset() == Offset) {
					TaintedValues.erase(Iter);
					return;
				}
			}
		}
	}

	void setTaintAllMode() {
		this->TaintAll = true;
	}

private:
	bool TaintAll;
	std::vector<TValue *> TaintedValues;
};
