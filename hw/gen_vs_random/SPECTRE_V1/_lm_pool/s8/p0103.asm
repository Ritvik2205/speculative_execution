.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub al, -82
sbb cl, sil
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
