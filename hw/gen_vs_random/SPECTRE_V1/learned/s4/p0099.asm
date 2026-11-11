.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
cmp al, 53
xor al, -74
lea ax, qword ptr [rcx + rdx + 59]
sub al, cl
xchg ebx, ecx
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
