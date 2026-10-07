.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rax] 
lfence
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx 
lfence
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 4 
lfence
xor edx, esi 
jmp .bb_0.1 
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax 
add dl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx] 
lfence
lea edx, qword ptr [rdi + rbx + 38925] 
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55 
lfence
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi] 
lfence
sub di, 10 
movsx rsi, cl 
setp al 
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rdi] # instrumentation
lfence
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
