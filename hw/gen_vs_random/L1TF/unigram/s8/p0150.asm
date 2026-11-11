.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
setp dil
imul ebx, eax, 43
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 76
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 80
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
setl dl
or dil, -113
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
sub bx, 72
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
