.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -404206377
bt rdx, rcx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and bl, -35 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and al, 20 # instrumentation
cmovp di, bx
btc rbx, 102
or dl, 51
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
or di, 87
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 9
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and sil, al
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
