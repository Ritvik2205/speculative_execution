.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rbx + rdx + 43]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
add bl, 56 # instrumentation
cmovns esi, ebx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
movsx rdx, sil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 84
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
add sil, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 17
btc bx, 49
add edi, 7
cmovns rax, rdi
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
