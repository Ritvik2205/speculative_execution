.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
or rax, -1561934807
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and edx, -44
or bl, -54
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and cl, cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
or al, -75
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
