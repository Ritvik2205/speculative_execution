.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
xchg al, sil
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
lea bx, qword ptr [rcx]
lea rdi, qword ptr [rcx + rdi + 3]
add dl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
lea rsi, qword ptr [rax]
sbb bl, -88
cmovnbe rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
