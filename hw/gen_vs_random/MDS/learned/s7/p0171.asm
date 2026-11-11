.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
btr bx, dx
or rsi, 57
bt ax, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor ax, -4010
test dil, bl
and bx, 58
or dil, -78
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and sil, al
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
