.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cl, -89
cmovnle edx, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 86
add dl, -121 # instrumentation
movsx bx, dl
or al, -5
neg esi
bt dx, cx
lea eax, qword ptr [rbx + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
bts ebx, eax
bt rbx, 23
cmovnz ax, ax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, dil
mov edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
