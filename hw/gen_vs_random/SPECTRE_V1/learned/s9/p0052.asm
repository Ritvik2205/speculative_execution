.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
mov dil, sil
lea rcx, qword ptr [rax + rbx + 66]
sub al, -89
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
inc rax
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, 7452
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
sub al, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
