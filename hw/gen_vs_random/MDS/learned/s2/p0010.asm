.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, bx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
btr ebx, esi
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 61
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
btr ebx, esi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and cx, -8
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test edx, -372470678
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
bts rsi, 221
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
jmp .bb_0.3
.bb_0.3:
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
