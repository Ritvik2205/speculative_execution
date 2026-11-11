.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
add bl, 107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 36
setb dil
cmovz rax, rdx
and si, 18
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 40
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
or edx, 99
add al, 56
cmovz rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
mul rdx
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
