.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
test bl, 26
adc edx, 44
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
setns dl
cmovnbe cx, si
jmp .bb_0.1
.bb_0.1:
sub bl, 35
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
adc eax, 87
lea dx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
or si, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
