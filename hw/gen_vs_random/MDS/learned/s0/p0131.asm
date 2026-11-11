.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and bx, 54
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor al, cl
and cl, dl
or dil, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
not sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or al, bl
and cl, -6
xor cl, dil
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
