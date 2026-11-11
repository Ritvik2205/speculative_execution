.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rax + rbx]
bts eax, 232
movzx cx, dil
sbb dil, dil
add al, -80
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 14
and edi, eax
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
movzx rcx, al
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
cmovo cx, si
xor cl, 89
cmp esi, esi
add dl, 85 # instrumentation
cmovp ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
