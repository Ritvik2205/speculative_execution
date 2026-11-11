.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, 140
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
xor di, 86
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 83
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
add sil, 36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
btc ax, 58
add al, -125 # instrumentation
cmovb ecx, edx
cmovl rcx, rdi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
