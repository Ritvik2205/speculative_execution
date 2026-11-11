.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
lea edi, qword ptr [rsi + rdi]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 77
not ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 7
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
movzx edx, dl
xor dl, 71
lea cx, qword ptr [rbx + rsi + 20]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
or sil, dil
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
add bl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
