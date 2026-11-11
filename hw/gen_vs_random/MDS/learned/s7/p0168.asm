.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
xor bl, -61
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or dl, 51
and sil, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
or sil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 71
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
cmp al, 90
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
