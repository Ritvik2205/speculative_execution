.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi 
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2 
add dl, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi] 
movsx si, dl 
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5 
or dl, dl 
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi 
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53 
jp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx 
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx 
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi] 
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx] 
mov cl, cl 
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75 
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
