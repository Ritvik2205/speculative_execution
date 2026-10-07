.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdx], al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rcx], dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rcx], 80 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx bx, byte ptr [r14 + rdi] 
lfence
cmovnbe edi, edx 
lfence
btc edi, edi 
lfence
lea edi, qword ptr [rbx] 
lfence
sub ax, -12040 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movzx ecx, byte ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovp rcx, qword ptr [r14 + rax] 
lfence
bts rbx, rsi 
lfence
add dl, 40 # instrumentation
lfence
cmovp rcx, rdx 
lfence
xor cl, al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb rdx, qword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
