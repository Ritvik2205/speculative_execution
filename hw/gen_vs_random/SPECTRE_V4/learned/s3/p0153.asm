.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
cmovz esi, edx
cmovs dx, bx
add rcx, rdx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
sub sil, -50
sub dl, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
imul edi, edx
test cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
dec dl
sub sil, -50
xor rsi, -3
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
