.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
xor sil, dil
jmp .bb_0.1
.bb_0.1:
sbb ax, -5921
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 84
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
jmp .bb_0.3
.bb_0.3:
test dl, 84
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
xor ax, 30996
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
lea rdi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
