.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and cx, -8
xor al, -19
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or dl, 85
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
xor di, -83
xor al, -4
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 89
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
or al, 37
xor al, -26
or dil, -41
xor al, sil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
