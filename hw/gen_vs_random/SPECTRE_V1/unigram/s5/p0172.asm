.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, bx
or dx, 41
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
adc sil, -77
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 18
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb ebx, esi
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
btr di, 62
add al, 120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
cmovnp di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
