.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
sbb dl, dil
xor rdx, 40
setnb dl
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
xchg bl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rax + rsi + 14]
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
