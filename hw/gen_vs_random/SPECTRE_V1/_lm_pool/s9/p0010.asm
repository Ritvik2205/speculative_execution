.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sbb cl, dl
add bl, cl
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
add dl, 47
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
inc esi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
cmovs ax, bx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
