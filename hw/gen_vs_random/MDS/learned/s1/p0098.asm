.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 18
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
not dl
test sil, al
or bl, al
and al, -103
xor dil, -70
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rax, 1250429750
or al, cl
xor cx, -18
xor si, 91
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
xor cl, 15
or dl, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
