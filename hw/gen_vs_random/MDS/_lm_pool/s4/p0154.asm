.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 86
and dx, 3
and al, bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
btr dx, cx
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
bts si, bx
bt bx, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
test al, dil
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
