.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and cl, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
btc eax, edx
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and sil, -87 # instrumentation
cmovo si, ax
and dil, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
test al, 91
and cl, cl
or si, di
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
xor dil, 124
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
xor bl, bl
cmovnbe di, si
test rcx, -613256812
and eax, 461212071
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
