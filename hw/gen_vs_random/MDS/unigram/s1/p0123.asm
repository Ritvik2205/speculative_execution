.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or dl, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
cmovnb rsi, rdi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
xor cl, 93
or ax, -4635
cmovb edi, ecx
jmp .bb_0.1
.bb_0.1:
bt ecx, 56
or di, -18
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 85
cmovs di, dx
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 28
xor dl, dl
btr rdi, rdi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
xor eax, 1170472196
or dx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
