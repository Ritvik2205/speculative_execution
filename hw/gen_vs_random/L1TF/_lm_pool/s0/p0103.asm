.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
imul al
adc di, 80
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
lea rcx, qword ptr [rdx + rbx + 89]
jmp .bb_0.2
.bb_0.2:
test al, dl
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
or al, -57
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
