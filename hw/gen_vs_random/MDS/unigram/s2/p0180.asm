.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not di
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 56
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
cmovns ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
xor dil, dil
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and al, -56 # instrumentation
cmovl rcx, rax
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
btc rsi, rbx
btc rsi, rcx
or dl, -18
and dl, 84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
cmovns ecx, esi
or al, cl
bt di, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
