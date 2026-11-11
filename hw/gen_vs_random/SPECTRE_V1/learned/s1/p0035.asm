.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 82
cmp sil, bl
setnz al
and cl, al
sub dil, -111
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
