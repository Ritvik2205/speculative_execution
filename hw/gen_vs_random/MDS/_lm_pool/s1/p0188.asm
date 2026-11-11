.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
or cl, 6
xor dl, bl
xor al, 34
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and sil, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test sil, 41
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovnp rdx, rax
and cl, -19
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
