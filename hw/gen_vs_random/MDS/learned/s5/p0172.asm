.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
or al, sil
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xor rax, -404206377
jmp .bb_0.1
.bb_0.1:
xor rsi, -117
or al, cl
xor al, 9
test rax, -359674714
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
btc edx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
