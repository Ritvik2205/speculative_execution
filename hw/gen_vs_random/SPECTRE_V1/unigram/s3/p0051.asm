.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
test sil, 97
add bl, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
cmp esi, 27
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 36 # instrumentation
sub rax, rax
add dl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
sub dl, -12
xchg cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
lea bx, qword ptr [rdx]
xor al, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
