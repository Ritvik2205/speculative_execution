.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
imul eax, edi
lea eax, qword ptr [rdi + rax + 89]
add cl, -73 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
setp dl
jmp .bb_0.1
.bb_0.1:
imul dl
xor dl, 64
and cl, 46
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 4
lea rsi, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
sub dl, -78
add cl, -36
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
lea ebx, qword ptr [rax + rax + 57]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
