.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
xor al, 55
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
bts rsi, 205
or al, 25
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and dl, cl
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and al, -55
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and al, 82
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or al, -61
and si, -121
and al, dil
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
