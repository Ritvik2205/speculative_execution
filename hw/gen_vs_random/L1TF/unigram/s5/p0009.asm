.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul si, bx, 13
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 45
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
dec eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
test sil, bl
movzx ebx, sil
adc al, -6
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 17
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
