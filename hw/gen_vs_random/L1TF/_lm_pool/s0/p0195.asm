.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
xor dx, 94
cmovnz rax, rbx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
add eax, 109
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and bl, bl
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
