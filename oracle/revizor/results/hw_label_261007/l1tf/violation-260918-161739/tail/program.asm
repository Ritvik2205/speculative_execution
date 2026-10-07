.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx 
btr esi, 174 
bt dx, cx 
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl 
setbe cl 
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax] 
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax 
sub ax, 19828 
xor dl, -82 
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx] 
dec bl 
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi] 
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx] 
add cl, bl 
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi] 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
