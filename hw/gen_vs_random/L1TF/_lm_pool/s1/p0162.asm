.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
cmp ecx, 54
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test rdi, rcx
lea edi, qword ptr [rbx + rdi + 27]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
