.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
sub sil, -99
sub cl, 86
cmovns rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
cmp eax, -234754587
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
inc eax
xor dl, 19
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 20
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
