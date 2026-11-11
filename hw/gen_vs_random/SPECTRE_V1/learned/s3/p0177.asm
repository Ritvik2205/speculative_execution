.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 7
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and dil, -114
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
xchg al, dil
cmp ecx, 16
lea rcx, qword ptr [rdi]
mov sil, bl
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
