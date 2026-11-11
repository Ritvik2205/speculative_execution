.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 366961170
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
xor sil, sil
test al, al
btr edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
not dil
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
cmovl dx, bx
and rax, rbx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
test rdi, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
