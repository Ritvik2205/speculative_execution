.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
lfence
setl dl 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rbx], edi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rax], -291743506 
lfence
bswap rax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
bt qword ptr [r14 + rbx], rdx 
lfence
movzx ecx, sil 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor rsi, qword ptr [r14 + rdi] 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
imul byte ptr [r14 + rdx] 
lfence
add bl, -53 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
setnl byte ptr [r14 + rsi] 
lfence
sub dl, bl 
lfence
lea si, qword ptr [rax] 
lfence
lea edi, qword ptr [rdx + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnle ecx, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock add word ptr [r14 + rax], 103 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sub dword ptr [r14 + rax], ebx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp esi, dword ptr [r14 + rdx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
