.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax 
lfence
and dl, al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and bx, 0b111 # instrumentation
lfence
btr word ptr [r14 + rdx], bx 
lfence
movsx si, dl 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub word ptr [r14 + rdx], -10 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp edx, dword ptr [r14 + rcx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdi], al 
lfence
jmp .bb_0.1 
.bb_0.1:
bt rsi, rbx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and byte ptr [r14 + rdx], cl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rax], -36 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovle rcx, qword ptr [r14 + rdi] 
lfence
sbb bl, -94 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb si, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovns edi, dword ptr [r14 + rax] 
lfence
cmovz esi, edx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
