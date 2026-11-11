.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
lea edi, qword ptr [rcx + rcx + 77]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test al, -56
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
xor ax, 27703
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
btc dx, cx
adc sil, al
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
