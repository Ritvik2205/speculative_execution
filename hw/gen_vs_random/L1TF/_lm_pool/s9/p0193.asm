.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 16
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
test dil, -126
add bl, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 5
lea dx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
cmovnbe si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
