.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 47
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
movzx ebx, ax
cmp al, 62
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
cmovnl rbx, rdi
lea eax, qword ptr [rcx]
add dl, -104 # instrumentation
lea rdx, qword ptr [rbx + rdi + 55]
btr cx, 43
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
xchg dl, cl
and rax, rcx
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
