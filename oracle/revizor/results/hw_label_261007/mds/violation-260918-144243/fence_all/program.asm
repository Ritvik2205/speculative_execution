.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rax], al 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor ecx, dword ptr [r14 + rdx] 
lfence
test bl, 106 
lfence
cmovb edx, ecx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnp esi, dword ptr [r14 + rsi] 
lfence
btc rsi, rbx 
lfence
and cl, 48 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovl di, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rsi], al 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rsi], 6 
lfence
and cl, -109 # instrumentation
lfence
cmovns rdi, rdi 
lfence
and ax, 30884 
lfence
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
lfence
and rsi, qword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rsi], rdx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rbx], -109 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rcx], 5 
lfence
xor al, -28 
lfence
xor al, bl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rsi], dil 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rcx], eax 
lfence
or rax, -285849275 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
