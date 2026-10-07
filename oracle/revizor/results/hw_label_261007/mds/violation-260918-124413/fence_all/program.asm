.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
lfence
cmovs ecx, ebx 
lfence
cmovns dx, di 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
or rax, qword ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz di, word ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb ax, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno dx, word ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edi, dword ptr [r14 + rsi] 
lfence
xor cl, cl 
lfence
or dil, -57 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
and rdx, 0b111 # instrumentation
lfence
lock btr qword ptr [r14 + rcx], rdx 
lfence
and cl, 102 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnb ecx, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl bx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovz rdi, qword ptr [r14 + rax] 
lfence
or al, -48 
lfence
bts eax, 103 
lfence
and sil, 65 
lfence
or cx, 10 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock not qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and rdi, 0b111 # instrumentation
lfence
btr qword ptr [r14 + rax], rdi 
lfence
cmovnz rax, rdx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
