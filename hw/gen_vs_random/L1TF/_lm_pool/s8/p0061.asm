.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, bx
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
xchg al, sil
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 37
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, 45
cmp al, 27
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
