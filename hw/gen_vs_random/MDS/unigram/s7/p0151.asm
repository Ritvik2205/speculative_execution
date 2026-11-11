.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1729060510
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and bl, -87 # instrumentation
cmovo bx, dx
xor rbx, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
xor di, -83
test cl, 91
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor cl, 83
cmovnbe rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
test ax, -20900
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
cmovns bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
