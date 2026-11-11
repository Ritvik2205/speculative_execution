.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 21
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rax, 1163013815
sub sil, -99
and al, al
test edi, 1
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
mov dl, sil
sub ax, -27107
or eax, 1495028166
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
