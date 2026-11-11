.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and dl, -98
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
mov rax, -6437636498926413678
add bl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
add bl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
cmovnl ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
