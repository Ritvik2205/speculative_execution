.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
cmp bl, dl
setb dil
sub rax, -1628299544
sub dil, -32
test cl, -62
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
cmp eax, 100
sub cl, dl
add sil, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
