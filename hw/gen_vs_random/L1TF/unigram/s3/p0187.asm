.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and dl, -86
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
imul rax, rsi
jmp .bb_0.1
.bb_0.1:
add al, 12 # instrumentation
cmovnb ebx, eax
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
imul rsi, rdx, 37
and rax, 1163013815
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
add dl, -8 # instrumentation
lea ebx, qword ptr [rax]
movsx esi, dl
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
