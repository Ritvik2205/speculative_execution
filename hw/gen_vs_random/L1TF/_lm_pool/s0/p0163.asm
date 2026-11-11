.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
or cl, -78
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 2
and al, sil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
lea ax, qword ptr [rbx + rsi + 63]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
setb dl
sub sil, dl
cmp dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
