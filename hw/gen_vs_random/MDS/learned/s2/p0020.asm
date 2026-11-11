.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 43
test dl, 25
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
or ecx, 61
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dx, di
test al, 74
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
bts rsi, 89
and bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
sbb ecx, 94
xor dl, cl
or al, al
xor dl, dil
bts rax, 117
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
jmp .bb_0.2
.bb_0.2:
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
or rax, -2043376621
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and cx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
