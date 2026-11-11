.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 5
test bl, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
test bl, cl
or al, -78
xor dl, 8
jmp .bb_0.1
.bb_0.1:
or bl, dl
xor cl, sil
or bl, 127
or bl, 127
or bl, sil
test dx, 16353
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
