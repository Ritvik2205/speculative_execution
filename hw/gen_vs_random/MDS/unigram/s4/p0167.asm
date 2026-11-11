.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -125
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and dl, -33 # instrumentation
cmovns rdi, rdi
test dil, -72
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
bts rax, 117
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
or dil, -52
bts rbx, 40
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and dl, -107 # instrumentation
cmovz rdx, rcx
and cl, -101
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
or dl, -18
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
