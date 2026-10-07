.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115 
lfence
and al, -64 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno edx, dword ptr [r14 + rsi] 
lfence
cmovz rbx, rsi 
lfence
btr di, 109 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dl, byte ptr [r14 + rdi] 
lfence
or eax, -1827868798 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], bl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rdi], -41 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rdx], -23 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or di, word ptr [r14 + rcx] 
lfence
cmovp esi, edi 
lfence
test cl, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnbe edi, dword ptr [r14 + rax] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovp rax, qword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovp ax, word ptr [r14 + rdi] 
lfence
bt eax, eax 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rcx], al 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rdx], esi 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and bx, 0b111 # instrumentation
lfence
lock btc word ptr [r14 + rax], bx 
lfence
or rcx, rbx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
