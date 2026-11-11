.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
inc ecx
or dil, cl
add si, -5
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
mov dl, bl
imul al
xor cl, 89
add cl, -94 # instrumentation
setnb al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 79
jmp .bb_0.1
.bb_0.1:
cmovnl rdx, rdi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 10
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 33
lea di, qword ptr [rbx]
add eax, 109
mov sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
