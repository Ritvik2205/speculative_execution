.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
xor sil, 94
or al, dil
jmp .bb_0.1
.bb_0.1:
and si, -121
and bl, 68
jmp .bb_0.2
.bb_0.2:
test cl, 62
and al, dl
and al, -54
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
