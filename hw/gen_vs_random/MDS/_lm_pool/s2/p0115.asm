.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or cl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test eax, 1287331633
or rbx, -72
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, -2039117613
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
