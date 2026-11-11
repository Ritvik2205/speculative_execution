.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edi, esi
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
setno bl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 54
setnb al
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
