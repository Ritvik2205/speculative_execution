.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
sets sil
neg rbx
adc esi, -39
xchg cl, dil
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
xor dl, 71
xor rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
cmp ecx, 56
sbb cl, sil
cmovnb rsi, rbx
cmovbe di, dx
xor rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
