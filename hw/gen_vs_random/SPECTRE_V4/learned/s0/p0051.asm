.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
cmovnb eax, edi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
cmovno edi, edx
and ax, 35
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
add rcx, rbx
cmovbe rdx, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
adc rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 27
setl bl
cmovz edx, eax
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 75
cmp cl, 17
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
cmovz rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
test bl, dl
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
cmp dx, si
inc ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
