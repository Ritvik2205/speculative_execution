.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
setb al
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
or cl, 105
lea rsi, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
