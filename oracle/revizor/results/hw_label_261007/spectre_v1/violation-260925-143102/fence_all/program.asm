.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
lfence
cmovbe rdi, rdi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rbx], 2 
lfence
add dl, -47 # instrumentation
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo rdx, qword ptr [r14 + rsi] 
lfence
movsx si, dl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
bts word ptr [r14 + rax], 5 
lfence
or dl, dl 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
lock bts dword ptr [r14 + rsi], esi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rdx], -53 
lfence
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, 41 # instrumentation
lfence
and rax, 0b1111111111000 # instrumentation
lfence
xchg dword ptr [r14 + rax], ecx 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sbb dword ptr [r14 + rbx], ebx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovs cx, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns esi, dword ptr [r14 + rcx] 
lfence
mov cl, cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov edx, dword ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rsi], -75 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rdi], ax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
