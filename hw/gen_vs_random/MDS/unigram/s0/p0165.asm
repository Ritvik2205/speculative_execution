.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
xor dx, 36
or rdi, rsi
btr ecx, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovbe ax, cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovp di, ax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
btc eax, edi
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
xor al, sil
and dil, -39
bt ax, 76
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
not rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
