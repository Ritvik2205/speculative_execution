.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
cmp rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
mov al, -26
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
inc bl
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
lea rdi, qword ptr [rbx]
cmovnbe cx, cx
cmovle dx, dx
test bl, cl
add dl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
neg ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
