.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -81
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
add cl, 100 # instrumentation
lea ax, qword ptr [rcx]
add bl, 68
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
imul rdx, rax, 47
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
setno dl
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
