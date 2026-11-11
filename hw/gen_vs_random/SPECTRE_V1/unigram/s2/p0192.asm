.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -56 # instrumentation
sbb rbx, 63
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
or esi, -74
and rdi, 13
neg rdx
lea edx, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
add dl, -47 # instrumentation
sbb dil, 75
add bl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
add cl, 72 # instrumentation
cmovnl bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
