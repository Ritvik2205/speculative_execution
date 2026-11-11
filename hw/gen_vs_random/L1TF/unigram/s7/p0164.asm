.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 39 # instrumentation
cmovnb di, dx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
or bl, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
add al, 36 # instrumentation
lea ecx, qword ptr [rcx + rax + 47]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
bt rdx, rbx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
neg al
jmp .bb_0.1
.bb_0.1:
adc cl, -34
xor rbx, rdi
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
