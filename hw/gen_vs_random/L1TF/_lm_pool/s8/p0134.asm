.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
or sil, cl
and dl, cl
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmp ax, 24210
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
