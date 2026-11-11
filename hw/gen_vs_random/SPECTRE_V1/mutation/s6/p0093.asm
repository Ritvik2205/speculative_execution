.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
cmp bl, -114
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
adc dx, bx
and rax, -273199823
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -54
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea rdx, qword ptr [rdi + rcx + 59295]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
