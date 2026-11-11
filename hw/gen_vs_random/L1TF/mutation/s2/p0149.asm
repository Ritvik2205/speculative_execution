.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 90
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and bl, bl
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
cmovnz si, si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
lea esi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
or rax, 1808026647
cmovnle dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
btc eax, ecx
add bl, 119 # instrumentation
cmovle cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
