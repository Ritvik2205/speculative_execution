.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
or al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test ecx, -1843375753
and bl, 68
bts rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
or sil, dl
xor cl, 83
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
or rdx, -48
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
