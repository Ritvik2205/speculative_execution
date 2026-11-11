.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
bts ax, cx
or dl, bl
and rcx, 107
bts rax, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and sil, dil
jmp .bb_0.1
.bb_0.1:
or al, dil
xor dl, 8
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and bl, 68
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or sil, -49
test cl, -18
cmovnbe rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
