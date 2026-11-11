.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
cmovnp ax, bx
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
setb cl
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
btc rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
cmp bx, 90
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
