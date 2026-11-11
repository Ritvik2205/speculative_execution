.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -13
xor esi, eax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
or bx, ax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cmovb rax, rdx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 23
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
cmovs di, bx
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
cmovo rax, rsi
or si, 0b1000000000000000 # instrumentation
bsf si, si
add al, 10
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
