.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
or al, sil
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
test dl, -85
and al, -54
or dil, al
test eax, 1729060510
or al, 37
jmp .bb_0.1
.bb_0.1:
bt esi, 3
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
