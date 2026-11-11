.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test cl, -113
and al, dil
xor al, 34
or al, bl
xor al, 99
or dl, dil
jmp .bb_0.1
.bb_0.1:
and al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or dil, 16
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
