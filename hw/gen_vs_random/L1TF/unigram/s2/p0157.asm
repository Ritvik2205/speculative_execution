.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
sbb sil, 19
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
inc rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
sbb rcx, 51
imul edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb rbx, -117
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 90
cmp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
