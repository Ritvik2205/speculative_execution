.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ecx, dword ptr [r14 + rcx] 
lfence
add dl, 43 # instrumentation
lfence
adc cl, cl 
lfence
sbb eax, 858696050 
lfence
not cl 
lfence
inc esi 
lfence
lea rax, qword ptr [rdx + rdx + 1405] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
neg byte ptr [r14 + rcx] 
lfence
and bl, bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rcx] 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
add bl, byte ptr [r14 + rdx] 
lfence
btr esi, ebx 
lfence
mov rdx, -1012904117298842753 
lfence
sbb cl, -123 
lfence
setle al 
lfence
mov bl, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movsx rax, word ptr [r14 + rsi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
