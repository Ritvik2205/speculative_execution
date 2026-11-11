.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 7
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test bl, dil
xor dx, 97
xor cl, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
xor dl, -43
or bl, 127
and ax, -122
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 87
xor rbx, 89
or cl, 119
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
