.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and al, 87
xor ax, -5889
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
