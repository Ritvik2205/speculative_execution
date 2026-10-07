.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
lfence
cmovnbe ebx, ecx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnbe rax, qword ptr [r14 + rax] 
lfence
or rsi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rdx, rsi 
lfence
or cl, 100 
lfence
or al, cl 
lfence
cmovle esi, ebx 
lfence
btr rax, rax 
lfence
and cl, -109 # instrumentation
lfence
not rbx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnp cx, word ptr [r14 + rsi] 
lfence
xor edi, -47 
lfence
cmovnl rdx, rdx 
lfence
jmp .bb_0.1 
.bb_0.1:
or si, bx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rax], 3 
lfence
or rdi, 67 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
btc word ptr [r14 + rdx], di 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], 95 
lfence
or bl, al 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnbe rsi, qword ptr [r14 + rbx] 
lfence
bts bx, dx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
lock btr dword ptr [r14 + rcx], eax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
