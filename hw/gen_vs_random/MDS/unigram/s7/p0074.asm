.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, 110
and rdi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdi]
and bl, 20 # instrumentation
cmovo ebx, edi
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and al, -116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test rcx, -613256812
cmovno di, si
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
xor dil, -3
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test al, sil
bts ecx, eax
or al, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and al, -38 # instrumentation
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
