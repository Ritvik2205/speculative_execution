.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
and rax, 1713273566
cmp bl, -114
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
cwd
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
lea rdx, qword ptr [rdi + rcx + 59295]
jmp .bb_0.2
.bb_0.2:
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
mov cl, -72
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
