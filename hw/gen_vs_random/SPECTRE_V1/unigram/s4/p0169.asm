.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 68
or cx, 83
test sil, -101
xor si, 23
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
setnl cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 39
adc bl, bl
cmovnbe rdi, rcx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 10
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
mov bl, 59
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
imul dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
