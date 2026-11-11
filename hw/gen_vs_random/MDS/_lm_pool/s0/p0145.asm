.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, dx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
or dl, 85
and sil, -56
xor cl, al
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
test edx, -372470678
or al, 25
and dl, -73
or sil, dl
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
