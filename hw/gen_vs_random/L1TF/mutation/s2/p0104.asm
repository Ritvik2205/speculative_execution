.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 858696050
inc esi
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
add dl, 43 # instrumentation
adc cl, cl
not cl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and bl, bl
jmp .bb_0.1
.bb_0.1:
btr esi, ebx
mov rdx, -1012904117298842753
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
sbb cl, 83
mov bl, cl
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
setle al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
