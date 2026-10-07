.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock bts word ptr [r14 + rdx], 0 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovb ax, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rbx], 1987381845 
lfence
cmovns rsi, rbx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovno edi, dword ptr [r14 + rax] 
lfence
cmovnl ax, di 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and edx, dword ptr [r14 + rcx] 
lfence
xor al, 77 
lfence
jmp .bb_0.1 
.bb_0.1:
and cl, 85 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovbe rbx, qword ptr [r14 + rdi] 
lfence
or cl, 10 
lfence
bt rcx, rcx 
lfence
and cl, -81 # instrumentation
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovns ax, word ptr [r14 + rdx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovno cx, word ptr [r14 + rax] 
lfence
cmovo cx, di 
lfence
bts rax, 149 
lfence
or rdx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr rbx, rdx 
lfence
or si, 0b1000000000000000 # instrumentation
lfence
bsf di, si 
lfence
or edi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf edx, edi 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rdx], eax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
