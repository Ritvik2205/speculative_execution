.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 97
xchg edi, ebx
mov eax, edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
cmovnl rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
add cl, -71
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
mul di
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add bl, -41 # instrumentation
xchg dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
