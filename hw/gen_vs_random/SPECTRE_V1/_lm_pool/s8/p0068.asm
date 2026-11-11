.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 41
js .bb_0.1
jmp .exit_0
.bb_0.1:
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
lea rbx, qword ptr [rcx + rdx + 26]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
cmovle rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
