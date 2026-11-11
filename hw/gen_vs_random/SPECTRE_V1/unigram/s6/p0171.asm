.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 9
inc dx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
test dl, 113
and esi, esi
or edi, 63
or cl, dl
add bl, -76 # instrumentation
cmovnle dx, ax
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
test dl, 113
cmovz edx, eax
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
