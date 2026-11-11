.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
xor cl, bl
or al, 24
or bl, al
or ax, 30524
xor dl, dil
or cx, 39
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and al, 49
xor cl, dl
and bl, 68
xor al, -26
btc ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
