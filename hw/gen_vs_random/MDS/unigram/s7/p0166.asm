.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rbx
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
cmovnz rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
test dl, 9
bt ebx, esi
and dl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 30
and sil, -56
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
cmovno cx, dx
not rdi
btr di, dx
and cl, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
test dl, bl
or rcx, -17
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
