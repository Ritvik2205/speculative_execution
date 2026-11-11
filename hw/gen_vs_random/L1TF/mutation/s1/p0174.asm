.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
mov bl, dl
inc ebx
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
add al, 93
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
imul sil
add bl, 37 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 109
lea si, qword ptr [rdx + rsi + 21492]
test ax, 13284
cmp eax, 123533400
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
mov cl, al
xor rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
