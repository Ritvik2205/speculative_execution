.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 13
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
xor ax, dx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
or al, cl
and bl, 42
or dil, dil
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 78
btc si, 11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and bl, -115 # instrumentation
cmovl ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
test rbx, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
