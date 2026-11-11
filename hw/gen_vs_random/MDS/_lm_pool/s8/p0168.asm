.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and al, 35
or cl, 39
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or sil, al
test sil, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
not cl
test dil, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
