.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx 
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx 
mov eax, edi 
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax 
cmovnl rdx, rcx 
or cl, 97 
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx] 
xchg edi, ebx 
jnp .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, -41 # instrumentation
xchg dl, al 
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi] 
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi 
add cl, -36 
mul di 
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127 
or cx, 0b1000000000000000 # instrumentation
bsf si, cx 
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
