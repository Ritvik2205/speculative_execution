.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
sub ebx, 75
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
setl dl
movsx bx, sil
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
setle al
cmp rax, rcx
xor cl, sil
setnb dl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
test dil, dl
mul rcx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
