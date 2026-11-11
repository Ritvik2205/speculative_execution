.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
xor al, 38
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, 834498504
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 6
and cl, sil
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 57
lea eax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
