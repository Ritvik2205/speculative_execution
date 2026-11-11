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
and rax, -1128038253
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
bt dword ptr [r14 + rdx], 6
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
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
mov cl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
