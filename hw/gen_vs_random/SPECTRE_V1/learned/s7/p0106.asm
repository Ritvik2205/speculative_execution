.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sub bl, -6
sub bl, -6
and di, 65
test bl, -8
lea edi, qword ptr [rdi + rdx]
jmp .bb_0.1
.bb_0.1:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xchg rdx, rcx
sub al, dil
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
