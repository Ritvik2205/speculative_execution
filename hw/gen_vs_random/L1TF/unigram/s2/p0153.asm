.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
sbb edi, edx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
btc di, dx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
add bl, 113 # instrumentation
setbe sil
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
add bl, 119 # instrumentation
cmovle dx, cx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
