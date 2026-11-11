.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovns edx, edx
and bl, -5 # instrumentation
cmovnl dx, si
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
cmovo rbx, rbx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 65
cmovp esi, edx
and dil, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and cl, 123 # instrumentation
cmovo di, ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
cmovl rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
cmovnz ecx, edx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
