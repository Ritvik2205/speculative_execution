.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor al, 89
or sil, -44
not sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
not dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
cmp al, 27
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
