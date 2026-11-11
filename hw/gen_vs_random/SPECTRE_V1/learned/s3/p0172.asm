.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 98
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 92
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdi
sbb al, -61
or dl, dl
sub eax, -518999763
lea edi, qword ptr [rbx + rcx]
btr ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
mov dil, sil
test sil, 112
lea ax, qword ptr [rdi]
bt rdi, rbx
cmovnbe si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
