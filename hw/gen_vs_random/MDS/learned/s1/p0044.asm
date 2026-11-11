.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bt di, ax
jmp .bb_0.1
.bb_0.1:
or cl, -36
xor si, 91
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
xor cl, sil
or cl, cl
and eax, 943733866
and bl, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and al, sil
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
