.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dl
add al, 117
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
inc ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
imul sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
add bl, 37 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 109
xor rax, rcx
cmp eax, 951020724
lea si, qword ptr [rdx + rsi + 21492]
mov cl, al
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
