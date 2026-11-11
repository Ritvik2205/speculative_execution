.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
bts rbx, rcx
xor sil, -126
xor cl, sil
jmp .bb_0.1
.bb_0.1:
test sil, 17
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
test sil, al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 3
and al, -54
xor dil, -5
or al, dl
and sil, -56
xor al, cl
test dl, bl
xor sil, dl
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
