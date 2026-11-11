.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
or cl, al
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
lea rcx, qword ptr [rbx]
add bl, bl
setbe sil
jmp .bb_0.1
.bb_0.1:
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
add al, -21 # instrumentation
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
sbb cl, dil
lea bx, qword ptr [rbx + rcx + 59]
sub cl, 32
sbb cl, -123
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 63
lea rsi, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
