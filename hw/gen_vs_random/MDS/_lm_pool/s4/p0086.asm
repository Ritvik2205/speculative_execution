.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 31
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
bts edx, 189
test eax, -409834435
or dil, bl
jmp .bb_0.1
.bb_0.1:
xor cl, 55
xor rbx, 89
xor al, sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor dx, 9
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
cmovnp rdi, rax
or al, 24
test eax, 1838539683
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
