.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dl, 84
or sil, -44
xor dil, cl
or rax, 1808026647
sbb cl, al
xor dl, dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
xor al, 16
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
