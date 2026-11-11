.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 107
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, 91
or al, -75
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or dil, dil
btr di, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
or cl, -77
or al, -61
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or cl, 7
or rsi, 67
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
