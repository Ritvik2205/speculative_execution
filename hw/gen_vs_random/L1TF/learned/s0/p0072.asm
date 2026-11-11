.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
