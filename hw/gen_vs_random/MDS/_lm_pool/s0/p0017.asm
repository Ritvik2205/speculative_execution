.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or al, 37
or al, -75
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or sil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or dl, -8
xor ax, 31969
xor al, 55
and sil, 74
and ax, 5001
xor cl, 24
and rax, -2058103810
xor cl, bl
or cl, 119
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
