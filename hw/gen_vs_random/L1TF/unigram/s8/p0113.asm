.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
lea eax, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
bts si, 36
add sil, 104 # instrumentation
mov esi, 23
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 22
jmp .bb_0.1
.bb_0.1:
bt ecx, ebx
xor dx, bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
add al, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
cmovnz dx, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
lea rdi, qword ptr [rax + rax]
lea rdx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
