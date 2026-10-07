.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp dx, word ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rsi], 1 
lfence
add cl, -122 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp cx, word ptr [r14 + rcx] 
lfence
movzx cx, sil 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or rax, qword ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and edx, dword ptr [r14 + rax] 
lfence
or dl, bl 
lfence
loopne .bb_0.1 
jmp .exit_0 
.bb_0.1:
cmp rax, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rdi] 
lfence
btr rax, rdx 
lfence
add bl, -107 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov dx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovl rdx, qword ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sub qword ptr [r14 + rdi], rdx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rdi], al 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rcx], 6 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdx], 1 # instrumentation
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
