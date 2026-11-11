.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
sbb al, 92
and dl, -86
lea ebx, qword ptr [rdi]
lea dx, qword ptr [rdi + rcx + 67]
xor dl, dil
xor dil, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 39
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
