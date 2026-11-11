.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
test al, sil
or bl, dil
or rax, -1561934807
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and cl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
xor al, 8
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
