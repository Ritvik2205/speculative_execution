.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and cl, sil
xor ecx, 31
xchg cl, bl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
sbb al, 118
xor bx, 47
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
sbb dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
