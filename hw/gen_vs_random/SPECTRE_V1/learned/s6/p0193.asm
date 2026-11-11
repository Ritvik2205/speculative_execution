.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
lea si, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
bts ebx, 82
test dil, -116
cmp sil, dl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
cmp cl, 22
add cl, -127
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
