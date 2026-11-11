.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -81
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
test dil, -126
cmp cx, 82
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
add cl, 55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
lea rsi, qword ptr [rsi + rdi + 51]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 77
mov edi, esi
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], si
inc al
test ebx, eax
or dl, -92
cmovnb edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
