.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
lfence
bt qword ptr [r14 + rcx], 2 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock btr dword ptr [r14 + rbx], 0 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
not qword ptr [r14 + rdi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rbx], 115 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
xor byte ptr [r14 + rcx], 42 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnb rdx, qword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rsi], dil 
lfence
cmovnp ebx, edi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnbe rax, qword ptr [r14 + rax] 
lfence
cmovo rbx, rax 
lfence
jmp .bb_0.1 
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
lfence
and dword ptr [r14 + rbx], ecx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and byte ptr [r14 + rax], 60 
lfence
xor al, 78 
lfence
cmovo edi, ecx 
lfence
bts edi, eax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnz esi, dword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rbx], -23 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnz esi, dword ptr [r14 + rbx] 
lfence
cmovnz di, di 
lfence
test rdx, -1624442902 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
