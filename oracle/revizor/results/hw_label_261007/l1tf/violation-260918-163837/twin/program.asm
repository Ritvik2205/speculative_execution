.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al 
and rsi, 0b1111111111111 # instrumentation
lfence
mov al, byte ptr [r14 + rsi] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rcx], dl 
and rcx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rcx], 80 
and rdi, 0b1111111111111 # instrumentation
lfence
movsx bx, byte ptr [r14 + rdi] 
cmovnbe edi, edx 
btc edi, edi 
lea edi, qword ptr [rbx] 
sub ax, -12040 
and rax, 0b1111111111111 # instrumentation
lfence
movzx ecx, byte ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle ebx, dword ptr [r14 + rcx] 
and rax, 0b1111111111111 # instrumentation
lfence
cmovp rcx, qword ptr [r14 + rax] 
bts rbx, rsi 
add dl, 40 # instrumentation
cmovp rcx, rdx 
xor cl, al 
and rdi, 0b1111111111111 # instrumentation
lfence
cmovb rdx, qword ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
