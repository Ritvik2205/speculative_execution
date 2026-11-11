.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and bl, 68
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor al, 9
or al, 37
test bl, sil
btc eax, 40
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, -731384280
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, 122
test dl, -119
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
