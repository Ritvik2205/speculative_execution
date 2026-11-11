.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor rcx, 71
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and bx, 53
and bl, cl
test cl, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and bx, 57
and rax, -2039117613
xor al, dil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
