.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, cx
and rax, -731384280
btr rsi, 207
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
bt si, dx
and sil, 74
xor rdi, -9
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
btc dx, bx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or rsi, 39
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
or dl, -89
test edi, -1252846009
test bx, 4954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
