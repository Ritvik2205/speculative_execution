.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
test rcx, -613256812
test rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor sil, bl
bt bx, ax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
test eax, 298249463
xor bl, dil
btc ebx, 149
jmp .bb_0.1
.bb_0.1:
xor cl, 83
or rdx, -109
xor cl, 83
or di, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
