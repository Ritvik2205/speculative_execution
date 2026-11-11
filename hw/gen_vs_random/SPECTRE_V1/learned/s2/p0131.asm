.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 92
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
test al, -71
or dl, 41
adc sil, dl
add cl, dil
cmovno ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
test ax, -32457
sbb bl, al
or dl, bl
cmp dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
