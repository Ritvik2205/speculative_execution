.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
or sil, cl
test ecx, -1843375753
or dil, -76
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
not al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor al, 99
xor cl, 15
and dl, -73
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and sil, al
and dx, 3
xor cx, -18
test bl, 65
test rax, -1579405415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
