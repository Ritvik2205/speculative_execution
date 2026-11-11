.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor al, sil
not al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 78
test al, -81
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
xor cl, -13
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
