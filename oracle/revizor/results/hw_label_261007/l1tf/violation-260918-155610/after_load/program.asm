.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 110 
and edx, ecx 
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx 
lfence
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi] 
lfence
or bl, al 
setnbe dil 
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl 
lfence
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68 
lfence
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -118 
lfence
cmovbe eax, ecx 
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rbx, qword ptr [r14 + rdi] 
lfence
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al 
lfence
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx 
lfence
btr ecx, esi 
xchg rdx, rdx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
