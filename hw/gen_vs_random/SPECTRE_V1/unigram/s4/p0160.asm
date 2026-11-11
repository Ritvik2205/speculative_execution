.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or al, sil
neg al
and rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
cmovnle ax, cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
