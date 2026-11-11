.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
btr rax, rax
and cl, -109 # instrumentation
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
xor edi, -47
cmovnl rdx, rdx
jmp .bb_0.1
.bb_0.1:
or si, bx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or rdi, 67
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
or bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
bts bx, dx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
jmp .bb_0.2
.bb_0.2:
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmovz si, di
test al, 74
btr rdx, 194
cmovnbe ax, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
