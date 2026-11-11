.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and dl, dl
or sil, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
xor dl, sil
test ecx, -1843375753
and rax, 79
test dl, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
xor dil, 81
xor al, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
