.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and dl, al
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rax, -1701787862
xor ax, -12492
test dl, 27
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor cl, 24
jmp .bb_0.2
.bb_0.2:
and ebx, 28
xor rax, -345061362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
