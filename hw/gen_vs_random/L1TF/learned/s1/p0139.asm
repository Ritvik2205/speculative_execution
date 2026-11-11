.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
test bl, 84
and dil, cl
test bl, dl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sub edi, 56
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
or cl, 105
mov cl, al
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
