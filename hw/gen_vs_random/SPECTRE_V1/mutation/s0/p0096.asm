.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
btr ax, di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sub dl, -48
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
bt rbx, 224
imul cx, dx, -88
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
test ax, dx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xchg ebx, edx
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
