.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and cl, -49 # instrumentation
cmovno cx, si
cmovo dx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
not eax
xor edi, edi
and cl, -109 # instrumentation
not rcx
and eax, -872608366
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
bt dx, ax
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
xor sil, al
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
