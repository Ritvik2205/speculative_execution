.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and eax, 1032144833
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
cmovle cx, ax
add di, dx
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
setp dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
sub edx, -33
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
sub ax, 7297
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
sub rbx, rcx
add rcx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
