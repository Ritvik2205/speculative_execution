.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, -114
add al, 21 # instrumentation
adc ax, 32514
adc dx, bx
and rax, 1713273566
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdi + rcx + 59295]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
cwd
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
