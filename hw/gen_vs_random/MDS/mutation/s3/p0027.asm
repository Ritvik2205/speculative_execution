.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test edx, ebx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or dil, -78
and bl, 33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc edi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
or esi, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
not dil
btc edi, 230
and edx, -44
and bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
