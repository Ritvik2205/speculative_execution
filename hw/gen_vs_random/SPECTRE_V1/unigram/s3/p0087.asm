.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 99
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
bt edx, 93
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 85
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
movzx si, bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
add dl, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmovnbe eax, ecx
lea di, qword ptr [rax + rax + 23]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
