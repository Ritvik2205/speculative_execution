.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 41513450
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
add cl, 6 # instrumentation
cmovl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 7
and cl, cl
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
lea rbx, qword ptr [rdx]
lea ebx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
xor edi, 33
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setbe al
and ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
