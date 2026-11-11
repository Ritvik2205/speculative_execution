.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and di, 99
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or rax, 1020005579
test al, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
not cl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or dil, -71
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
