.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73 # instrumentation
cmovns rbx, rsi
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
test dil, -67
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
test rsi, 879594088
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovz si, cx
and cl, 95 # instrumentation
cmovns rsi, rsi
jmp .bb_0.1
.bb_0.1:
test rcx, 64
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 89
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
or si, 69
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or dx, 98
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
