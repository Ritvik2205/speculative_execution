.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, 2036069402
xor si, -50
mul rdx
neg sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
sbb rcx, rdx
btr edi, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
add al, 36 # instrumentation
lea ebx, qword ptr [rbx + rax + 67]
sub di, 69
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 29
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
