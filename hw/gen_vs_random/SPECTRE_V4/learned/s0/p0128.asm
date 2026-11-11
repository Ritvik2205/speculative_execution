.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, dx
cmovl eax, eax
mul rbx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 73
add bl, bl
or eax, 1802312508
add bl, bl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
add bl, bl
sbb cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
movsx di, sil
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovnz eax, edi
dec dl
sub cl, 116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
