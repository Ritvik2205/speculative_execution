.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 61
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and al, al
or dl, sil
test esi, 425331143
xor al, 99
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rsi, 42
test al, -7
jmp .bb_0.1
.bb_0.1:
or bl, -62
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor sil, -14
xor bl, 67
or sil, -78
and al, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
