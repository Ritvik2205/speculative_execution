.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb esi, edi
lea di, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
sbb sil, al
cmp cx, 88
and al, 33
jp .bb_0.1
jmp .exit_0
.bb_0.1:
btc esi, 7
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
