.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
lfence
movzx ebx, cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
adc dword ptr [r14 + rsi], edi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rcx], ecx 
lfence
test dil, 18 
lfence
test dl, al 
lfence
xor rax, 1636804787 
lfence
sub al, 10 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb ecx, dword ptr [r14 + rbx] 
lfence
jnz .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, -106 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
adc si, word ptr [r14 + rdx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc dword ptr [r14 + rbx], -72 
lfence
cmp al, cl 
lfence
cmovno edi, edx 
lfence
xor sil, 1 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], 53 
lfence
add rax, 1503210561 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
