.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lfence
lock dec dword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rax] 
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
lfence
movsx rdx, word ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rax], rbx 
and rdi, 0b1111111111111 # instrumentation
lfence
sbb ecx, dword ptr [r14 + rdi] 
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rsi], 4 
xor edx, esi 
jmp .bb_0.1 
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax 
add dl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs si, word ptr [r14 + rcx] 
lea edx, qword ptr [rdi + rbx + 38925] 
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], -55 
and rdi, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rdi] 
sub di, 10 
movsx rsi, cl 
setp al 
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
