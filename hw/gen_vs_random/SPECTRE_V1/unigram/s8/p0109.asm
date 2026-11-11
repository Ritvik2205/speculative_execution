.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 4
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
adc al, dil
dec sil
sbb cl, dil
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
btc dx, cx
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
sbb rbx, 37
cmovnb rcx, rax
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
xchg cx, dx
imul ax, cx, 76
lea cx, qword ptr [rbx + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
