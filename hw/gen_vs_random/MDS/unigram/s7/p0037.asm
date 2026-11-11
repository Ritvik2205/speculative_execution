.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
btc esi, eax
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
or bx, bx
or dx, 125
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rdx, rax
cmovno rdi, rdi
xor bl, al
bt eax, 151
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 100
or rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and dil, sil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
