.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
xor dl, -91
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 11
or dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
test cl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 77
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
add edx, ecx
sbb rax, -1477844571
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
