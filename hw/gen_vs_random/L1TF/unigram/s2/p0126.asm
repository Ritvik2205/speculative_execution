.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
and dl, sil
inc rsi
setnp bl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
cmp rsi, 69
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
add dil, -103 # instrumentation
cmovnz di, bx
add dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 27
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 4
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
