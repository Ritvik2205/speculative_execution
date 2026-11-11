.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
xor ecx, esi
sbb cx, bx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -23 # instrumentation
cmovl si, cx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
adc al, -82
lea eax, qword ptr [rax + rdx + 58]
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
sbb eax, 1830317432
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
add sil, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
xor dil, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
