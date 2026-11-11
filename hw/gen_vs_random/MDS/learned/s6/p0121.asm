.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
test dil, cl
xor dil, bl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
xor rdx, -59
and dil, -62
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and dl, -73
or sil, al
and sil, 89
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or rax, -141551502
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
