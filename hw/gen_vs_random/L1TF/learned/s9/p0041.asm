.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
imul al
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
add rcx, 2
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rdi + 13]
jmp .bb_0.2
.bb_0.2:
add dil, 65 # instrumentation
cmovo rdi, rbx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub cl, -49
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
