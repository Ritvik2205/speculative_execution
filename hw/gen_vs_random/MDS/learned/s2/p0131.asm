.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 59
bt ax, 171
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and al, 33 # instrumentation
cmovnle edi, eax
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovs edx, edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and eax, -1971658905
jmp .bb_0.2
.bb_0.2:
btc rsi, 79
and si, dx
and al, -37
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
xor edi, 74
or al, -8
btc esi, 226
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
cmovs ecx, ebx
cmovo rcx, rcx
adc al, 63
and al, -56
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
