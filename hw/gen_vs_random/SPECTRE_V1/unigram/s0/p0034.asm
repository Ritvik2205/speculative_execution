.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
lea rcx, qword ptr [rdi + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 7
bt esi, ecx
setnle al
cmovo rax, rax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
sbb al, -112
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
lea cx, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
