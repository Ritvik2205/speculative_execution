.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
inc edx
or eax, 1276549484
and bl, -43
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
btr rdi, 94
cmovle cx, ax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
mov dil, dl
sbb sil, bl
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
