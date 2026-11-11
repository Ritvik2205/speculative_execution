.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
xor dl, bl
bts cx, 14
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
xor bl, bl
or dl, 85
bt bx, di
and bl, -56 # instrumentation
cmovnle edi, esi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
bt rsi, 238
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and cl, -6
cmovl edx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovo rdx, rdx
bt dx, 162
cmovnz cx, ax
jmp .bb_0.1
.bb_0.1:
and cl, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
or dx, 125
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovle ax, si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or al, 24
cmovnbe bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
