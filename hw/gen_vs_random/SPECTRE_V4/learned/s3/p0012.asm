.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and dl, bl
xor rbx, -99
or cl, -55
xchg al, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb al, 57
dec al
xor al, sil
mov al, 124
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
