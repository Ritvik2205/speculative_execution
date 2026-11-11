.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
adc dil, dil
lea rbx, qword ptr [rbx + rax + 69]
dec dil
jmp .bb_0.1
.bb_0.1:
xor dil, 2
add sil, -15 # instrumentation
cmovl rsi, rcx
add sil, 18
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
lea cx, qword ptr [rcx + rbx + 67]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
