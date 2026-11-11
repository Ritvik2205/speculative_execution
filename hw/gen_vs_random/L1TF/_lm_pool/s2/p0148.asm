.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sbb cl, -11
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
cmp ecx, 87
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
test al, -56
or sil, al
test esi, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
