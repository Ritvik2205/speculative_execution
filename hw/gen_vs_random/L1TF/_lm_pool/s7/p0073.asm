.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmp rdx, 49
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
xor rcx, 22
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
lea cx, qword ptr [rdi + rbx + 2]
sub rdx, 24
jmp .bb_0.1
.bb_0.1:
not di
lea rax, qword ptr [rbx + rdi + 10]
jmp .bb_0.2
.bb_0.2:
test edx, 1891691791
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
