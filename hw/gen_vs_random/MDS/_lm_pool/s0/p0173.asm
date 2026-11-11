.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor dil, dl
btr rax, 56
test dil, -80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
not al
jmp .bb_0.1
.bb_0.1:
test dil, dl
test bl, -114
and cl, dil
and bl, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test rcx, -613256812
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
