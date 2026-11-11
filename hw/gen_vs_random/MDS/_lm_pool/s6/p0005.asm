.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
not al
xor sil, -15
test cl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or cl, cl
and dl, -73
xor dl, cl
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test bl, dl
test sil, al
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
