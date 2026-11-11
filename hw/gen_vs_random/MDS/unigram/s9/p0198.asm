.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
xor cl, sil
cmovl rdi, rbx
xor rdx, -59
cmovo rdx, rdx
btc rdi, 221
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
or edi, -88
and cl, 118 # instrumentation
cmovp edx, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and bl, 34 # instrumentation
cmovno ebx, eax
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and cl, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
