.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 83
or cl, 7
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 10
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
not al
and dl, al
test al, -81
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor ax, -6793
or al, sil
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
