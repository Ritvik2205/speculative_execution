.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
and si, -121
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
not sil
jmp .bb_0.1
.bb_0.1:
test bl, al
xor bx, 96
xor rax, rdx
xor dil, 124
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test edi, -1252846009
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test al, dil
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
