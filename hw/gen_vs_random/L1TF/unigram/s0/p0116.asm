.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 50
add rdi, rbx
sub bx, 14
xchg cx, dx
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
mov ecx, eax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 22
jmp .bb_0.1
.bb_0.1:
sbb rbx, 47
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and dl, sil
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and bl, sil
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or al, -87
lea rax, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
