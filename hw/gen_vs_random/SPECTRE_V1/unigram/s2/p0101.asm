.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, ax
xchg rax, rdi
add bl, -95
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
sbb bl, bl
sub al, sil
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
adc bl, 88
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
imul edi, edx, 4
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
test rdx, 1657596343
lea dx, qword ptr [rcx + rax + 14]
and edi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
