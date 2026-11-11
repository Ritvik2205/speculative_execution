.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
or al, dil
or al, 24
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
not sil
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, dil
bt di, dx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
or rax, -141551502
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
