.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
or bl, bl
and dil, dil
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
xor dil, -124
or ax, -4210
test edx, -1561252782
or al, -75
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
not dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or rax, 52
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
