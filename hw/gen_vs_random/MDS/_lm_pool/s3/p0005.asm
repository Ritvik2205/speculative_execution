.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test edx, -372470678
bts ax, bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and dil, -62
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or rax, 52
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
test al, dil
and sil, 74
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or ax, -14271
jmp .bb_0.1
.bb_0.1:
test rsi, 29
xor dil, 8
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
