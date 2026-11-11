.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dil, sil
test sil, sil
test eax, -1634766116
or sil, al
and dil, bl
and sil, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
xor cl, 55
test dil, cl
cmovle di, bx
or al, -22
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
