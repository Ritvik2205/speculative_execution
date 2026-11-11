.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 79
and edi, 23
bt rbx, rdx
or sil, -78
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 60
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bt cx, 22
and dx, 60
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
or dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
xor di, 93
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
