.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 189
sbb al, 102
or al, 27
add cl, bl
add bl, al
jmp .bb_0.1
.bb_0.1:
sbb al, -3
inc ebx
sub cl, dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
cmp al, -44
and al, 59
dec dl
and dl, -104
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
