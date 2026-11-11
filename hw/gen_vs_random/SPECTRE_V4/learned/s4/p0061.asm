.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
sub dl, 107
movzx di, cl
cmp dl, dil
xor rax, rdi
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
add al, 19
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
bts di, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
