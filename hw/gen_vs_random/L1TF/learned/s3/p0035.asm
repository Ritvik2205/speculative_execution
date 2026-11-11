.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, -90
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add rdx, rax
jmp .bb_0.1
.bb_0.1:
btr ax, 185
imul ax
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
sbb rax, -1477844571
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
lea esi, qword ptr [rdi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, 56
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
