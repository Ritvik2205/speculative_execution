.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
lfence
movzx rbx, byte ptr [r14 + rsi] 
lfence
sub sil, -87 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rax], dx 
lfence
cmovp ebx, ecx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnp di, word ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor dword ptr [r14 + rcx], eax 
lfence
lea ebx, qword ptr [rdi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdi], 25 
lfence
cmp rsi, rax 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rsi] 
lfence
add cl, 59 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovns rdx, qword ptr [r14 + rsi] 
lfence
sub esi, 62 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp si, word ptr [r14 + rcx] 
lfence
or esi, 0b1000 # instrumentation
lfence
and sil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv esi 
lfence
or si, -97 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
