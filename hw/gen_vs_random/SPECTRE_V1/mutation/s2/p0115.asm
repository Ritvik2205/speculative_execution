.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc si
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
sbb cl, -122
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
setle cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, -55
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
cmovp ebx, edx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
sub ebx, esi
cmovl eax, ebx
dec al
add bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
