.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
xor rdx, -59
xor rax, -1657511731
xor al, 34
and si, -121
and dil, 125
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test al, -7
xor sil, 94
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
