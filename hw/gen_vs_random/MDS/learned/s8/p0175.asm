.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
or bl, 43
bt ax, di
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 30
or al, -78
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
test edi, -1252846009
jmp .bb_0.2
.bb_0.2:
bt cx, si
bt ax, bx
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
