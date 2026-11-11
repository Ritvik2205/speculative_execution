.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
test sil, cl
jmp .bb_0.1
.bb_0.1:
test eax, 1947430392
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
xchg rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
and bl, al
jmp .bb_0.3
.bb_0.3:
inc dil
bts si, 89
sub dl, bl
test dl, 24
and bl, -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
