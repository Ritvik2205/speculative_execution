.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
bts rcx, 3
not bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or sil, al
xor al, 8
and ecx, -104
not dil
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
xor dl, 34
and eax, 33
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
