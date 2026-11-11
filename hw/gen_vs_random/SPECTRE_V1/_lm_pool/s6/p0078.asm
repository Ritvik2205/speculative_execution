.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
add al, al
cmp rsi, 53
lea rdx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmp al, dl
test bl, -8
sub al, -89
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
xchg eax, esi
test bx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
