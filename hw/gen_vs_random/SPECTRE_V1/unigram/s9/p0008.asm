.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
add cl, 44 # instrumentation
cmovz edx, ebx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax + rdi]
add cl, 44 # instrumentation
cmovz ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
btc bx, cx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 73
cmovs dx, ax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
cmovnle ax, di
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
add dil, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
