.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, cl
cmovnp rbx, rsi
sub rax, rdx
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
add bl, 68
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
add bl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
lea bx, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
movsx edi, sil
sbb rdi, rbx
movzx eax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
