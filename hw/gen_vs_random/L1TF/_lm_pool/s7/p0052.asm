.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 11
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, 22
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 71
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
