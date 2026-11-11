.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
or cl, -55
sub al, cl
add al, -82
adc al, -70
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, al
mov sil, al
xchg rax, rbx
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
