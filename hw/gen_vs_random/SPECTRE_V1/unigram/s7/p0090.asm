.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
lea ecx, qword ptr [rcx + rbx + 6]
test ax, 636
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and edx, edx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
setnp dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
add bl, -92 # instrumentation
cmovs cx, bx
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
