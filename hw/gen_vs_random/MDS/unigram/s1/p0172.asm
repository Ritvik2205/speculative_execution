.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and bl, -5 # instrumentation
cmovnl bx, cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and cl, -111
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and dx, 3
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
bt edx, edi
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
or rsi, 24
jmp .bb_0.1
.bb_0.1:
cmovl cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 43
xor dl, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
