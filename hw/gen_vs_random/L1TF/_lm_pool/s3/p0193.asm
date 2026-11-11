.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
xor dl, dil
or ecx, 89
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
bts bx, 223
lea rax, qword ptr [rcx + rsi]
test dl, 84
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
btc si, bx
and cl, sil
or si, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
