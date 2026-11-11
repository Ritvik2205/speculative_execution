.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and dl, bl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
or rdi, 21
or dil, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and sil, 74
xor rsi, -117
test al, 127
xor al, -26
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
