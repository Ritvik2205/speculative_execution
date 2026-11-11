.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test dil, 46
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
or bx, 4
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
test dl, 48
jmp .bb_0.1
.bb_0.1:
or edi, ebx
or esi, edi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 17
or al, sil
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rax
test dil, -51
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and dl, -73
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
