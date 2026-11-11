.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
or dil, dil
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
cmovnle rbx, rsi
xor cl, bl
btc ax, 67
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmovno edi, eax
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 74
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 87
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
