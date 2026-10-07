.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi] 
sub sil, -87 
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx 
cmovp ebx, ecx 
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax 
lea ebx, qword ptr [rdi] 
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25 
cmp rsi, rax 
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi] 
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi] 
sub esi, 62 
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi] 
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx] 
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi 
or si, -97 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
