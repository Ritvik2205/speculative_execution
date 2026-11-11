.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
or bl, 43
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test dl, 9
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or al, 24
and bl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
