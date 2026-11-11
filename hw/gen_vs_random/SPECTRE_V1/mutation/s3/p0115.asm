.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc si
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sbb cl, -122
setle cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ebx, esi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
dec al
or dil, -55
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
add bl, bl
cmovp ebx, edx
cmovl eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
