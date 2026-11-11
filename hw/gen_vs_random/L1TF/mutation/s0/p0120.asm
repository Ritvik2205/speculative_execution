.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and ebx, 108
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
adc bl, -14
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
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
test al, -32
lea ax, qword ptr [rdi + rdx + 24773]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
