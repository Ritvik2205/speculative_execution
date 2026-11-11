.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
xor cl, 24
and bl, al
and al, -8
test rdx, 99
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
not bl
bts rax, rcx
jmp .bb_0.1
.bb_0.1:
xor si, 80
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor dl, 34
or al, 24
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
