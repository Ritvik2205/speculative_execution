.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -31 
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax 
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 3 
and di, -49 
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl 
and sil, -125 
jmp .bb_0.1 
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121 
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -64 
btc ecx, 88 
bts di, si 
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 30 
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5 
and si, si 
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 0 
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 4 
or dl, 53 
cmovns edi, edx 
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
