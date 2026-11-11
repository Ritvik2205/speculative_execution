.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, -978188247
test ebx, eax
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test ax, si
or dl, -89
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
btc ax, 33
btr eax, edi
bts rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and bl, 65 # instrumentation
cmovnbe ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
test edi, -1252846009
or bl, -54
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor sil, dl
cmovb rcx, rbx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
