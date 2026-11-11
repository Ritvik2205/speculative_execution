.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and al, -86 # instrumentation
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
bt bx, 253
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
cmovnle ebx, eax
and cl, 118 # instrumentation
cmovp edx, ecx
and sil, 74
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 60
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
or sil, dil
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and cl, sil
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
