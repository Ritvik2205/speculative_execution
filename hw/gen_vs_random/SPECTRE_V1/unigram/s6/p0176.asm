.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
btr rax, rdx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xchg rbx, rdx
xor cx, 84
cmovz ecx, eax
adc al, dl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmovle di, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
imul bx, ax, 17
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
bts di, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
