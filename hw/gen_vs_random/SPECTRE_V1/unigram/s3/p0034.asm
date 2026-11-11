.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
not rbx
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
add al, 110 # instrumentation
cmovb rcx, rax
btr rdi, 26
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb rax, rdx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
mov ebx, 54
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
bts dx, dx
cmp ax, 7046
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
