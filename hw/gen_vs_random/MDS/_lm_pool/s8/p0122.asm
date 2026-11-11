.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
xor dil, -70
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
not al
test al, 22
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
test dil, -51
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
cmovnp rdi, rbx
or cl, dl
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
