.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
xor dil, bl
or rcx, -17
test bl, -9
xor ax, -1005
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor al, -4
or dil, cl
and eax, 33
or al, 24
xor dx, 62
xor dl, -59
test sil, 17
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
