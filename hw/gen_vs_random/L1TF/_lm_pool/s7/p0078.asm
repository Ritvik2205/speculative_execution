.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
add cl, -20
and rsi, 23
and al, bl
xor dil, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and dl, -86
test al, 15
sub rdi, 72
xor bl, dl
test al, -104
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
