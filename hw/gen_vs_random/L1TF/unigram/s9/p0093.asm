.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 19
add edi, 69
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
lea rcx, qword ptr [rdi]
sub dil, -70
cmovnp rdx, rdx
bswap rbx
lea esi, qword ptr [rcx + rax + 6]
imul sil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
