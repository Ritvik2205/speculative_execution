.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
or dil, dl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
add esi, -124
test dil, -126
neg rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
