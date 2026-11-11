.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
sbb eax, 858696050
and bl, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
add dl, 43 # instrumentation
adc cl, cl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
not cl
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
mov rdx, -1012904117298842753
sbb cl, 83
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
btr esi, ebx
setle al
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
