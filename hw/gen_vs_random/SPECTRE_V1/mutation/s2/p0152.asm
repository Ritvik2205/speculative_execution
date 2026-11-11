.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 2134929425
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
add al, 21 # instrumentation
adc ax, 32514
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
adc dx, bx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
lea rdx, qword ptr [rdi + rcx + 59295]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
