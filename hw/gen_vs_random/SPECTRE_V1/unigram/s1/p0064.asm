.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul si
sbb edi, ecx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
imul esi
or rax, -1571963467
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 62
test rbx, 96
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
