.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
and cl, 114 # instrumentation
cmovz di, si
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 20
and rdx, rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
or rsi, 73
btr ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 81
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
cmovnl edi, edi
xor bl, bl
jmp .bb_0.1
.bb_0.1:
and dil, al
bt esi, edx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor cl, cl
test ax, -11534
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
