.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
xor rbx, 89
and cl, dl
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and sil, -56
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
or al, 37
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and cx, -8
or sil, -78
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
