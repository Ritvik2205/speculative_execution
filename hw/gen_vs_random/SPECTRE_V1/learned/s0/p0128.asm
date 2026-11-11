.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edx, ebx
xchg rax, rbx
or bl, 1
sub cl, bl
lea rax, qword ptr [rsi + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
and al, 33
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, dil
and al, 33
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
