.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
mov bl, dl
add al, -46
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add bl, 37 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 109
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
lea si, qword ptr [rdx + rsi + 21492]
cmp eax, -127
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor rax, rcx
imul sil
test ax, 22956
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test dl, -37
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add al, -34 # instrumentation
setnp bl
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
