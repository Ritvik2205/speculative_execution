.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 86
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
bt ebx, edi
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
cmovnle eax, esi
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
cmovz cx, di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
bts edx, ebx
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
bts rax, 117
and dl, -7
bt edx, 254
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
