.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 72
or al, -78
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and si, -121
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
btr bx, cx
test bl, -14
or rax, 302048971
and ax, 13090
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
test al, dil
and ax, -10351
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
