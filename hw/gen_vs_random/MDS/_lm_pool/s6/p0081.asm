.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
or cl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
xor dl, 40
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
test bl, 65
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or sil, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or al, 74
xor sil, dl
and dil, al
test al, cl
test rsi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
