.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
or cl, -62
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
mul cx
mov rbx, -8992833348021516010
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
add al, 120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
xor sil, cl
xor dl, 71
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
