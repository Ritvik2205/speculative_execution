.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -17
and cl, dil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
btr cx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
xor al, sil
btr ecx, esi
and ax, 29207
test al, dl
or cl, al
jmp .bb_0.1
.bb_0.1:
test sil, dl
test dil, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
