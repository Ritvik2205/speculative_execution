.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
or al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
test bl, 65
test edi, -1252846009
bt ecx, edx
or al, cl
and ax, 19224
jmp .bb_0.1
.bb_0.1:
xor al, -19
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and dx, 60
jmp .bb_0.2
.bb_0.2:
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
