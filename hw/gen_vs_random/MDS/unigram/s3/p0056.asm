.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
not rsi
bts edx, esi
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
xor al, -119
or sil, -8
cmovnl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and al, -37
cmovo ax, di
and al, bl
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and bl, 60
or dx, 27
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 75
or bl, cl
xor ebx, 65
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and cl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
