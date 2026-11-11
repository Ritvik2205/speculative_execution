.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 189
and bl, dl
test bl, -16
sbb al, 57
sub bx, 24
test al, cl
test eax, 1340292467
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
xor dil, bl
xor al, cl
mov bl, dil
test al, 57
xor dl, bl
mov dil, 44
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
not dx
cmp al, 115
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
