.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
xor rax, -345061362
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
cmovnz eax, esi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnb rdx, rcx
or dl, 51
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
bt rax, rdi
or eax, 678817098
jmp .bb_0.2
.bb_0.2:
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
xor dl, bl
bts cx, 177
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
xor bl, bl
or dl, -89
bt bx, di
and bl, -56 # instrumentation
cmovnle edi, esi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
bt rsi, 4
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and cl, -6
cmovl edx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
cmovo rdx, rdx
bt dx, 162
cmovnz cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
