.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
lea cx, qword ptr [rcx + rdi + 51091]
or bl, 61
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
lea rsi, qword ptr [rsi + rbx + 34]
xor cl, 91
cmovno rdi, rdx
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
cmovl ebx, esi
or ax, 31571
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
