.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or sil, al
bts rdi, rbx
btr bx, cx
and bx, 38
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or al, -58
not cl
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
test rdi, 83
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
jmp .bb_0.1
.bb_0.1:
xor cl, 24
test esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
