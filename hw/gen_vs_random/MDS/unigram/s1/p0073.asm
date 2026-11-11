.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -20176
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
test edi, -1252846009
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
xor cl, bl
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and cl, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 80
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and sil, -69
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
test cl, 101
and si, ax
btc rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
