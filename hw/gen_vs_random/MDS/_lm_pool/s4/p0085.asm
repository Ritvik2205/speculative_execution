.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test rcx, -613256812
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
or dil, bl
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
test dl, -119
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
not dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
