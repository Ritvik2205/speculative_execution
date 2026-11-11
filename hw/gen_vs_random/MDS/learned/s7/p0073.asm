.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor cl, 98
or rdi, 21
xor dil, al
xor al, cl
test bl, dil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor al, 55
bts eax, 222
btc si, 99
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test dx, 16353
xor dl, -59
not bl
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
