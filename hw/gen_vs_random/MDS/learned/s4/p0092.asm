.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test cl, 0
or sil, cl
bt eax, edx
or al, bl
test sil, dil
and dl, -73
bt ax, dx
btr cx, bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
