.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
xor rcx, -2
xor sil, 94
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or cl, 6
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test ecx, -1843375753
and si, -121
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor ax, -6793
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
