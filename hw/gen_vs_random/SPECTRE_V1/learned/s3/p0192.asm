.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub al, cl
lea rdi, qword ptr [rax + rcx + 84]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
test al, 84
sub dl, cl
cmp eax, -563371897
xor eax, -1721938664
inc ebx
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
