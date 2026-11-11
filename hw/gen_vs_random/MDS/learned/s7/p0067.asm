.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
btr ax, dx
or al, 37
test dl, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and al, cl
and rbx, 65
btr cx, si
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
xor cl, bl
and al, bl
test esi, 425331143
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and dl, -73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
