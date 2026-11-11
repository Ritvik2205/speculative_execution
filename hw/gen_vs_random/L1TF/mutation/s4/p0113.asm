.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 287965578
xor cx, si
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
inc bl
and cl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
movzx edx, ax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
test al, 15
lea ax, qword ptr [rdi + rdx + 24773]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovl rcx, rdi
add al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
btr edi, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
