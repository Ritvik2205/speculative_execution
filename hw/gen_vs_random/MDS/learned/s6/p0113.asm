.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, ax
btr si, di
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and al, cl
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and al, 75
and di, 99
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
bts rax, rdi
test cl, -18
xor sil, 110
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor dl, -43
xor ax, -23364
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
bt di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
