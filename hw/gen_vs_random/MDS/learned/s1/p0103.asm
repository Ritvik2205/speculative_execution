.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, di
and al, -114
and rcx, 107
or cl, 7
jmp .bb_0.1
.bb_0.1:
and al, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and eax, 461212071
jmp .bb_0.3
.bb_0.3:
xor dil, 81
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test edi, -1252846009
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
