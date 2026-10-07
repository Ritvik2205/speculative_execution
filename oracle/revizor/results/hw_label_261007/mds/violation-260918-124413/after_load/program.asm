.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs ecx, ebx 
cmovns dx, di 
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax] 
lfence
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsr edi, dword ptr [r14 + rsi] 
lfence
xor cl, cl 
or dil, -57 
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx 
lfence
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax] 
lfence
or al, -48 
bts eax, 103 
and sil, 65 
or cx, 10 
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax] 
lfence
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi 
lfence
cmovnz rax, rdx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
