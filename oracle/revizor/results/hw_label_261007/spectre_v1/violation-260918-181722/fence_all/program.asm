.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rdx], ebx 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rsi], bx 
lfence
mov eax, edi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rsi], eax 
lfence
cmovnl rdx, rcx 
lfence
or cl, 97 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock neg qword ptr [r14 + rbx] 
lfence
xchg edi, ebx 
lfence
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, -41 # instrumentation
lfence
xchg dl, al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovs eax, dword ptr [r14 + rdi] 
lfence
or edi, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and edx, 0b11 # instrumentation
lfence
idiv edi 
lfence
add cl, -36 
lfence
mul di 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rsi], 127 
lfence
or cx, 0b1000000000000000 # instrumentation
lfence
bsf si, cx 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rbx], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rbx] # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rbx] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
