.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor bl, -61
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor al, 122
xor dil, -70
xor dl, 8
xor cl, 24
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 56
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and sil, cl
or al, 54
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
