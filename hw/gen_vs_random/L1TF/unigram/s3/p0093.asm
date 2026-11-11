.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
lea rcx, qword ptr [rcx + rbx + 77]
bt eax, 40
or rsi, 6
add cl, al
mov sil, 79
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 55
add dil, -117 # instrumentation
lea rcx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
mov di, cx
lea rdi, qword ptr [rsi + rsi]
bts esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
cmp cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
