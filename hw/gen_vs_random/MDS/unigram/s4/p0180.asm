.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp si, di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
bt ax, 76
cmovp di, cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
bt esi, 3
test cl, -123
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
or ebx, ecx
jmp .bb_0.1
.bb_0.1:
or sil, dl
btr di, ax
and edi, 23
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
xor ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and al, 66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
