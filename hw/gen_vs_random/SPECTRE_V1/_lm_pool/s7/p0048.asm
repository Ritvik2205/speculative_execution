.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edi
and dl, cl
lea rbx, qword ptr [rsi + rcx + 6]
lea rcx, qword ptr [rdi + rdx + 73]
add sil, dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor cl, bl
sbb dl, dil
sub cx, 32
lea rdi, qword ptr [rcx + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
