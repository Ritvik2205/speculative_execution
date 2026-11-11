.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg edx
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
add dl, -48 # instrumentation
lea eax, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 61
imul cl
cmp cx, 90
and rdx, rsi
jmp .bb_0.1
.bb_0.1:
add sil, cl
bt rdx, rdi
and rcx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rcx]
setp al
and edx, 48
sub al, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
