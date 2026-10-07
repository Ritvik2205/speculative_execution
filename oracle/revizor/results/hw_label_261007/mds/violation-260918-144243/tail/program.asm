.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al 
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx] 
test bl, 106 
cmovb edx, ecx 
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi] 
btc rsi, rbx 
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi] 
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al 
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6 
and cl, -109 # instrumentation
cmovns rdi, rdi 
and ax, 30884 
jmp .bb_0.1 
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx] 
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx 
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109 
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5 
xor al, -28 
xor al, bl 
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil 
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax 
or rax, -285849275 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
