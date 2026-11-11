.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
imul ax
add cl, 55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
sbb rsi, 89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
cmovnle rdi, rdi
test ax, 636
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
btr edi, ecx
add rcx, 6
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 52
jmp .bb_0.1
.bb_0.1:
add bl, dil
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
sbb rcx, 12
xor dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
