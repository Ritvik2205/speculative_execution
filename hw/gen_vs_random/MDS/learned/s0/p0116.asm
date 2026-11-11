.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
or al, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
bts rax, 77
jmp .bb_0.1
.bb_0.1:
xor rbx, 89
or al, bl
and eax, 33
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
test cl, sil
and al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
