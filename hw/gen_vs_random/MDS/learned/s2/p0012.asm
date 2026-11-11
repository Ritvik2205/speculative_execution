.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and al, cl
and rcx, -63
test dl, 48
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or sil, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test cl, 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
xor cl, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
