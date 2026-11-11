.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rax
add al, 110 # instrumentation
movzx bx, al
and dil, -114
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
xor al, -74
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 7
movsx rcx, cx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 76
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
mov dil, dil
lea edi, qword ptr [rsi]
add di, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
