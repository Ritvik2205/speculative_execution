.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or al, cl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 12
or bl, -62
xor cl, 55
or dl, -97
and bl, cl
bts dx, si
bt ax, cx
xor bl, 67
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
not bl
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
