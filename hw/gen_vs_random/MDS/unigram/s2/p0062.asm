.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 58
or ax, 19243
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and cl, -49 # instrumentation
cmovno cx, ax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
or rax, -285849275
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 82
xor ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
cmovnb rdx, rax
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and bl, 66
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
or cl, 10
bts eax, edi
cmovnz di, di
and rax, -1909598591
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
