.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 85
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
inc cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
mul al
and sil, 37
add al, al
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor cx, 113
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
