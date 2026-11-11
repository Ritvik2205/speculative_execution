.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, bl
cmovno edi, eax
mov sil, sil
or si, 0b1000000000000000 # instrumentation
bsf ax, si
cmp rdi, rsi
bt bx, si
xor dil, 77
bts rcx, 84
test edx, 1380346728
sub cl, 8
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 25
add bl, 26 # instrumentation
sbb sil, cl
lea rsi, qword ptr [rdi + rdx + 55]
add bl, -41 # instrumentation
xchg bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
