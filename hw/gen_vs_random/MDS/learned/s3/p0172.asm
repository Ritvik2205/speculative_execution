.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and cl, -71
and rax, -2039117613
not bl
xor ax, -23364
and bx, 60
xor rdi, -9
and edx, -44
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
or rcx, 54
test dil, bl
bt si, cx
or sil, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test rbx, 31
and dil, 125
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
