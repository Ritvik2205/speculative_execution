.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, ax
xor edi, 38
and ax, dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 27
cmovo bx, di
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and bx, si
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdi
or dl, bl
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
btc rdx, 138
cmovp eax, eax
and cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
btc si, 87
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
