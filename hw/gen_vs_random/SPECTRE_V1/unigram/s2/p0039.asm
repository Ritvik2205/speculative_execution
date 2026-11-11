.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
xor cl, 114
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 65
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 76
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
setns cl
xor bx, dx
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
cbw
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
