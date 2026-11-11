.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
cmovbe esi, edi
cmovnp si, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
or rdi, -11
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 95
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 38
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
bt ecx, edx
or dl, sil
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
cmovns bx, si
xor dil, 81
cmovnbe rax, rcx
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
