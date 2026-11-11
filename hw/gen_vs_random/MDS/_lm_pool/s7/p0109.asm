.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
xor sil, bl
and bl, bl
xor ebx, 72
xor dil, bl
and al, 82
xor cl, 15
and dil, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
