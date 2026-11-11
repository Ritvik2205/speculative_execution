.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
xor dil, 8
xor rax, -1499464454
or sil, -78
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 88
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor al, -19
btr si, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and eax, -829294476
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
