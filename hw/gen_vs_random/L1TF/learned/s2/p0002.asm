.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test bl, -92
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sub dl, -49
add bl, 68
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdi + rcx + 23]
xor al, 38
inc dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
