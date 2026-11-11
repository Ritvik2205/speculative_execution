.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bts ecx, 184
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or edx, esi
not sil
xor bl, cl
test sil, sil
xor al, sil
and dil, -39
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
xor dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 76
bt rax, rsi
and cl, dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
