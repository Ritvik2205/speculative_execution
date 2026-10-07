.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
lfence
xor cx, word ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdi], dl 
lfence
btr di, 199 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor cl, byte ptr [r14 + rsi] 
lfence
or bl, cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovp eax, dword ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovl si, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rcx], -23 
lfence
cmovs edx, ecx 
lfence
and di, si 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovp rax, qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rax], rsi 
lfence
test ebx, 245771113 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rdi], -120 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb edx, dword ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnz edi, dword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rdi], 2 
lfence
and bl, 44 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovle ax, word ptr [r14 + rsi] 
lfence
or dl, dl 
lfence
cmovnle rsi, rdi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
