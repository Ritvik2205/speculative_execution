.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, -36
movzx ax, al
mul sil
cmp ax, -31327
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 636
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
test bl, 45
setno bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
