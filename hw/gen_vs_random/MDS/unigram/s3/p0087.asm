.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovo ebx, eax
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
not rdi
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
cmovl rsi, rsi
xor cl, -13
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 53
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 95
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovno rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
