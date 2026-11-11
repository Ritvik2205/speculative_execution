.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xor dil, -42
test ebx, 44
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
xor dl, bl
jmp .bb_0.3
.bb_0.3:
and cl, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
