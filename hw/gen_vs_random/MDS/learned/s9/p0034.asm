.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or al, -78
xor dl, 34
or dil, -78
xor sil, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or dl, cl
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor al, 9
xor bx, 60
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
