.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor bl, -61
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor al, bl
test rax, 1978892575
and rax, 627810357
or dil, al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
