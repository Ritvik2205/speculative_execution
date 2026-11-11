.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
test al, dil
btr cx, bx
jmp .bb_0.1
.bb_0.1:
xor al, 8
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
bts rcx, rax
or al, -24
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
or al, dl
test cl, 91
and cl, 79
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
