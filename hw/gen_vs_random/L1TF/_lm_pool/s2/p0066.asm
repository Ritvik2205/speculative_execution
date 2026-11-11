.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
add al, 56
test al, dil
sub dl, -49
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
sbb rax, 1131444263
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
