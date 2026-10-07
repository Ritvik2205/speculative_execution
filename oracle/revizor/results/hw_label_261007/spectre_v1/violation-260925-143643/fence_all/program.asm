.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rbx], al 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rsi], ecx 
lfence
test dl, bl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rax], -71 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb qword ptr [r14 + rsi], -122 
lfence
setnl dl 
lfence
btc ebx, 29 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rdx], 0 
lfence
mov bl, dl 
lfence
btr rbx, 132 
lfence
jnz .bb_0.1 
jmp .exit_0 
.bb_0.1:
add eax, edx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rcx], rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx rbx, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rsi], 0 
lfence
movsx ebx, bl 
lfence
lea ecx, qword ptr [rdi + rsi + 7976] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
