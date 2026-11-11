.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and al, 35
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 97
test cl, -123
xor al, -19
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
bt cx, si
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
test edi, -1252846009
or al, 24
xor bl, sil
cmovnbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
