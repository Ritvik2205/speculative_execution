.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
sets dil
add dil, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
add cl, -84 # instrumentation
lea ecx, qword ptr [rax + rax + 45]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
or ebx, -124
or dl, bl
sbb dx, bx
sbb dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
