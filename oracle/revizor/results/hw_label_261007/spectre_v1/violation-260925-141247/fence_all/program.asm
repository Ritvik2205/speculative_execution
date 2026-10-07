.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
lfence
xor sil, byte ptr [r14 + rcx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rcx], al 
lfence
inc si 
lfence
sbb cl, -122 
lfence
setle cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rax], rax 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lfence
xchg dword ptr [r14 + rax], edx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
add word ptr [r14 + rdi], 18 
lfence
dec al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnbe edi, dword ptr [r14 + rdx] 
lfence
or dil, -55 
lfence
cmovp ebx, edx 
lfence
sub ebx, esi 
lfence
cmovl eax, ebx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movsx ebx, byte ptr [r14 + rdx] 
lfence
add bl, bl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
