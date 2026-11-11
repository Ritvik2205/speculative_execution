.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, 12
sub rdx, 62
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 41
adc sil, dil
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
setle cl
sbb al, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
test esi, eax
inc cl
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
add cl, 39 # instrumentation
setle cl
adc bl, -14
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
cmp ecx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
