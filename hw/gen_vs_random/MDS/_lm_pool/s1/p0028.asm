.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
test al, 22
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or cl, dil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
test bl, 65
cmovle bx, si
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor cl, 83
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or sil, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor sil, dil
test rax, -708244380
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
