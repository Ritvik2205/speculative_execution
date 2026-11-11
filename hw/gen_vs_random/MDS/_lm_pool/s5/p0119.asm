.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
xor eax, -127
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor sil, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or bl, dl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test edx, -1561252782
bt cx, si
and sil, 89
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
bt si, cx
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
