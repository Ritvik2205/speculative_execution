.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
or al, 16
or dl, sil
test si, 80
cmovbe ax, si
btc si, 99
test dx, 16353
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or cl, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test al, 127
and cl, al
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 48
test rax, 1000448998
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
