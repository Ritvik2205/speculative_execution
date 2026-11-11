.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 184
or al, 37
and dil, -62
test dil, -80
xor dl, 34
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and dl, dl
test bl, dl
test sil, cl
and cl, dil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
not bl
or al, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dx, 60
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
