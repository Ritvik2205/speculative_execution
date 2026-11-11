.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
cmovnb rax, rax
xor sil, 31
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
cmovnbe di, dx
cmovnp ax, dx
xor eax, 1170472196
and sil, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
xor esi, 68
not dil
bt eax, 6
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
bt di, bx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmovnbe ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
