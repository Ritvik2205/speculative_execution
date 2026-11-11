.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or eax, 848176907
and rax, -273199823
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and cl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
add edi, -91
sbb al, dil
btc eax, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
