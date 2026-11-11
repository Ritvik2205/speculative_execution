.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
btc bx, di
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
btr esi, edi
and bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 10
btr edx, edx
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and dl, sil
jmp .bb_0.1
.bb_0.1:
cmovnz ax, si
and cx, -2
or cl, 39
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and bl, bl
bt rdx, rdx
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
