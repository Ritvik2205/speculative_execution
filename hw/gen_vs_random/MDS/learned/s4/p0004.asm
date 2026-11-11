.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or sil, dl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and dl, -73
xor rdi, -9
and esi, 82
or dil, al
and dil, bl
and rax, rcx
test bx, 25542
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
