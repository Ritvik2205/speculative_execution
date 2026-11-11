.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 11
xor ebx, -81
lea bx, qword ptr [rdi + rcx + 23]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and cl, al
or sil, -44
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sbb esi, eax
add cl, 100 # instrumentation
lea dx, qword ptr [rcx]
cmovnz rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
