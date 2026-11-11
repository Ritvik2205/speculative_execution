.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, 37
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 76
imul bl
test bx, ax
xchg rax, rdx
adc bx, di
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 90
mov rbx, rdi
btc ecx, ecx
test rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
