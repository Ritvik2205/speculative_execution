.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
cmp rax, 921820217
adc bl, 86
test cl, 92
and bl, bl
and dl, -86
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
