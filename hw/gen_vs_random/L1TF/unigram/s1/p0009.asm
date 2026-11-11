.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
sub eax, ebx
test al, al
imul bl
add rcx, 61
inc eax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
add rdi, 30
lea rcx, qword ptr [rdx]
lea edi, qword ptr [rax + rax + 96]
cmovle cx, ax
btr edi, 1
setno dl
adc bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
