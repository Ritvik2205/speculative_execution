.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
test al, sil
test cl, dl
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
test dl, 48
or al, 30
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and sil, al
test al, 91
or al, 37
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
