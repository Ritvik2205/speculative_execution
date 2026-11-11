.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx], 18
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -99
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
lea rdi, qword ptr [rsi + rbx]
sbb dil, sil
xor cl, dil
lea rcx, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
