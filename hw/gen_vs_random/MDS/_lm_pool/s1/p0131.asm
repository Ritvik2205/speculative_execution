.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
test al, -81
test cl, sil
or bl, dil
or dl, sil
xor eax, 571592471
xor dil, -70
and al, -103
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
not sil
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and dil, bl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
xor rax, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
