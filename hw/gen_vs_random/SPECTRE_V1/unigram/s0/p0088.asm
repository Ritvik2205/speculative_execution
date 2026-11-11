.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
btr dx, 1
cmovs rdx, rdx
lea rax, qword ptr [rsi + rsi + 61]
movsx rdx, ax
test cl, sil
add bl, -12 # instrumentation
lea rbx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and cl, 86
lea ax, qword ptr [rbx + rcx + 54]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmovl cx, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, cl
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
