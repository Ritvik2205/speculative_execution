.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 14
jmp .bb_0.1
.bb_0.1:
inc rdi
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
or al, -5
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 33
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
