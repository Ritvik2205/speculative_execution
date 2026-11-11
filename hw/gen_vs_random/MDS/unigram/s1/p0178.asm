.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
btc rbx, rcx
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl ecx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and bl, 109 # instrumentation
cmovs cx, bx
not sil
btc rcx, rdx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
cmovnp edx, eax
bt rdi, 36
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 35
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
