.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 20 # instrumentation
cmovp bx, ax
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 4
cmovo eax, ecx
or cl, 7
test al, al
cmovnz si, bx
btr rax, 209
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
test al, -81
and dl, -73
or ax, bx
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
and cl, 123 # instrumentation
cmovo dx, cx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
cmovnbe edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
btc ebx, 149
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
