.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
xor rdi, 45
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
imul rax, rdi, 109
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 77
sbb di, -122
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
inc sil
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
