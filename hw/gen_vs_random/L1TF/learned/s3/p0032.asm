.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, sil
test al, cl
and rbx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rbx]
xor dl, cl
test bl, dl
cmp bl, dil
sbb dl, dil
sbb bl, -88
not edx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
