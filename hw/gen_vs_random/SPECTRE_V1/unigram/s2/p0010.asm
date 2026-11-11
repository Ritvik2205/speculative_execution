.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, edx
adc cl, -19
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, bl
cmp bl, dil
add cl, -123 # instrumentation
cmovnp rbx, rsi
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
cmovnbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
imul eax, eax, 11
cmp ax, 7046
and rax, 0b1111111111111 # instrumentation
lea eax, qword ptr [rsi + rax]
cmovnz si, si
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
