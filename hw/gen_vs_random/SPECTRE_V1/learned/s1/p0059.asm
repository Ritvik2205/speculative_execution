.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -2019837038
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
adc cl, dl
setb al
movsx rdi, bl
mul dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 100
cmovnl esi, ecx
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
mov si, 9258
cmovo ebx, esi
add dl, dil
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
