.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, bl
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
setb al
mul dil
add eax, -2019837038
adc cl, dl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
add cl, 22 # instrumentation
cmovns rbx, rsi
lea ax, qword ptr [rsi + rdx]
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
