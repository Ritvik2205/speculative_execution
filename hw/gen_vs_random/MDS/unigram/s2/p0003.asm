.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 64
bt eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and bl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 79
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
cmovno edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and di, ax
and bl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
xor eax, 1170472196
and dl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
