.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
inc bl
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
setb cl
jmp .bb_0.1
.bb_0.1:
dec di
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rcx, rax
jmp .bb_0.3
.bb_0.3:
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
test ax, 636
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
