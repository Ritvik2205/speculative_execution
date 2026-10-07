.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
xor edx, dword ptr [r14 + rbx] 
lfence
sbb dl, cl 
lfence
xchg ecx, eax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and ax, word ptr [r14 + rdi] 
lfence
mul rax 
lfence
test al, 56 
lfence
cmovnbe di, di 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], 43 
lfence
mov al, -102 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmp rax, qword ptr [r14 + rdi] 
lfence
add sil, -111 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rcx], -85 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc dword ptr [r14 + rbx], eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov qword ptr [r14 + rcx], rdx 
lfence
add eax, 760523556 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
