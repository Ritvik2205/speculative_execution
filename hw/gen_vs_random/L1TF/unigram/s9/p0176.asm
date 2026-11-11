.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dx, 9
lea di, qword ptr [rdx + rcx]
xor cl, 89
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
mov sil, dl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
lea bx, qword ptr [rbx + rax]
cmovnl rax, rdx
bts edx, 72
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdi
cmovnle rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
