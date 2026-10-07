.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al 
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx 
test dl, bl 
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71 
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], -122 
setnl dl 
btc ebx, 29 
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0 
mov bl, dl 
btr rbx, 132 
jnz .bb_0.1 
jmp .exit_0 
.bb_0.1:
add eax, edx 
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi 
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi] 
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0 
movsx ebx, bl 
lea ecx, qword ptr [rdi + rsi + 7976] 
.exit_0:
lfence
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
