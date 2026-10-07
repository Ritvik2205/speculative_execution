.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al 
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl 
lfence
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80 
lfence
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi] 
lfence
cmovnbe edi, edx 
btc edi, edi 
lea edi, qword ptr [rbx] 
sub ax, -12040 
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax] 
lfence
bts rbx, rsi 
add dl, 40 # instrumentation
cmovp rcx, rdx 
xor cl, al 
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
