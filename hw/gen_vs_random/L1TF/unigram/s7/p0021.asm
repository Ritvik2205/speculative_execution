.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb di, ax
seto cl
btc rax, 14
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xor bl, 38
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdi
setnbe dl
cmp ax, cx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
cmovns edi, ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
movsx rsi, cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
cmovz rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
