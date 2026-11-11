.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -124
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and cx, -2
and ax, 27170
test dil, -51
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 53
and rax, 79
xor bx, 22
and rdx, 46
or al, bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and cl, -111
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
