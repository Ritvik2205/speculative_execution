.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
xor al, dl
xor al, -4
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or al, 16
or al, al
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
or al, sil
xor dl, bl
bt dx, si
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
