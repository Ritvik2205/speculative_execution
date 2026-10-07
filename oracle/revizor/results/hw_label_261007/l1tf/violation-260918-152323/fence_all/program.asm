.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lfence
lock dec dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rax] 
lfence
add dl, -117 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx rdx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rax], rbx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
sbb ecx, dword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rsi], 4 
lfence
xor edx, esi 
lfence
jmp .bb_0.1 
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, rax 
lfence
add dl, 62 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs si, word ptr [r14 + rcx] 
lfence
lea edx, qword ptr [rdi + rbx + 38925] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], -55 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rdi] 
lfence
sub di, 10 
lfence
movsx rsi, cl 
lfence
setp al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rdi] # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
