.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add al, -72
and rbx, rax
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and si, 67
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
test dil, -116
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
