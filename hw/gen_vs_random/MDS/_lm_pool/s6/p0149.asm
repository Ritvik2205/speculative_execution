.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor rax, -773894210
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
or dl, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or eax, edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 28
and ax, 19740
test dl, bl
and sil, dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or cx, 49
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
