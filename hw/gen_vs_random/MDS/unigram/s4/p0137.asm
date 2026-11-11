.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs edi, eax
btc edx, 44
xor di, -116
and bx, -21
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 14
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and dl, -7
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
cmovl rdi, rcx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
cmovnz rdi, rax
bt esi, 13
and cl, 85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
xor bl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
