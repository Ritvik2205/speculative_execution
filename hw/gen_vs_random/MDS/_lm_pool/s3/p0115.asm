.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -96
test sil, -96
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
bt ax, bx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor cl, 55
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or rbx, -72
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rax, rdx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or eax, 678817098
not bl
test al, dl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
