.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
xor al, -4
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor dl, -43
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
not al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 47
and rax, -1701787862
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
jmp .bb_0.2
.bb_0.2:
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
