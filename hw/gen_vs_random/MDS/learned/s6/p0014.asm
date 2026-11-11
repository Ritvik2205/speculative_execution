.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and dl, -73
bts ax, dx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
jmp .bb_0.1
.bb_0.1:
test al, 66
xor rbx, 89
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
or bl, dil
and bl, bl
and dl, -73
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
