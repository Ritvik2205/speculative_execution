.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
or al, 100
cmp eax, -240917296
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
