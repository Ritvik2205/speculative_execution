.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
or dx, dx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
xor sil, sil
cmovs ax, dx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 32
and bl, 120 # instrumentation
cmovnle esi, esi
or eax, -1777347252
and rax, rbx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and esi, 89
and dl, sil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
