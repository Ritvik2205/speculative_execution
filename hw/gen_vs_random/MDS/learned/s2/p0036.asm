.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
or al, cl
cmovle esi, ebx
btr rax, rax
and cl, -109 # instrumentation
not rbx
jmp .bb_0.1
.bb_0.1:
xor si, cx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 16
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 61
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
sbb dl, dl
bts eax, 103
xor al, 78
xor ax, 24729
or sil, -8
xor bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
