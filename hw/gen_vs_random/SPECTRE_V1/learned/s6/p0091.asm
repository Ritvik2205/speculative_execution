.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
sub dl, -48
test dl, -105
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 57
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 49
sbb al, 33
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
test bl, -8
sub cx, 29
lea di, qword ptr [rcx]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
