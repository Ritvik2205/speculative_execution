.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
cmp rsi, 83
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
cmovl esi, ebx
mov cl, bl
test dl, dl
add bl, -37 # instrumentation
dec dil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
xor rbx, 24
lea rdi, qword ptr [rsi + rbx]
xor dil, bl
add dl, -109 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
xor dx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
