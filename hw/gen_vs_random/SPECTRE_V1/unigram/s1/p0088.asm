.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rdx, 82
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
sbb eax, 97
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
add dl, -124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
xor cx, 23
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
xchg edi, eax
adc rdx, 35
cwd
lea rdx, qword ptr [rdx + rdi + 39]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 15
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
