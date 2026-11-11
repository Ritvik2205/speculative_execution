.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, si
test al, sil
xor ax, -1005
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
test al, bl
and bx, 92
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor al, -19
xor rsi, -117
not sil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
