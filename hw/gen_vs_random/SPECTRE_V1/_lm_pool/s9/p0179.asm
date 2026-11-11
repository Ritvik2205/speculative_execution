.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
cmp bl, -114
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add al, sil
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
