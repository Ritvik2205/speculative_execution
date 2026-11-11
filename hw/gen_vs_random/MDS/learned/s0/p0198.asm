.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
btc rcx, 74
and bl, sil
jmp .bb_0.1
.bb_0.1:
and eax, 943733866
xor dl, 8
and sil, 89
test al, sil
and bl, al
test dl, bl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or al, -58
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and cl, dil
xor dx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
