.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdx + rax + 89]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
xchg dx, ax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
cmovnle rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
mov cl, 85
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
or bl, bl
jmp .bb_0.1
.bb_0.1:
add bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
dec dil
add dil, 89
add al, 59 # instrumentation
cmovns edi, eax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
