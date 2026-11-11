.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 26
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and bx, 54
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 53
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
btc ax, 32
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
cmovle rax, rdi
not sil
or dl, bl
and ebx, 76
test rsi, rdx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 21
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
cmovp ecx, edi
bts eax, 222
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
