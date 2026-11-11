.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp cx, dx
cmovb edi, ecx
mov dil, al
and esi, 60
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 51
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
add sil, -49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
