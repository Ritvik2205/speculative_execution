.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 69
add cl, -36
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 60
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cx, si
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
xor cx, 113
or al, -57
or dil, -113
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
