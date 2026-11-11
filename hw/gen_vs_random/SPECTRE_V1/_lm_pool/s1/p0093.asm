.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
lea rsi, qword ptr [rdi + rbx]
xchg al, al
mov cl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 65
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
