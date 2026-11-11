.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and dl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
cmp bl, sil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rcx + rdi]
xor dl, al
and di, 70
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
