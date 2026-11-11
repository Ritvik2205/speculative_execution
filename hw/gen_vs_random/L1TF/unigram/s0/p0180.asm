.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl di, si
xor bl, -6
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
add bl, sil
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
cmovnl eax, edx
jmp .bb_0.1
.bb_0.1:
cmovnbe esi, eax
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
setnbe cl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
xor edi, 48
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
