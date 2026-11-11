.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
and dil, -39
or al, dil
and bx, 1
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
btr dx, ax
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
test eax, -1634766116
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rax, 79
jmp .bb_0.1
.bb_0.1:
bt ecx, 98
and dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
bts ax, dx
and sil, -56
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
