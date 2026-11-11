.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
btr di, 89
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 20
xor esi, 49
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
bt dx, 228
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or bl, -62
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
bts eax, 222
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and dl, 57 # instrumentation
cmovnb si, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
or cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
