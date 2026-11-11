.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
sbb dl, sil
test al, dl
dec bl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb rdx, -34
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
xor dl, al
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
