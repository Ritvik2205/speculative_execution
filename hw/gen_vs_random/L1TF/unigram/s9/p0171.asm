.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 79
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
lea eax, qword ptr [rdi]
bt cx, si
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
imul ecx, eax, 57
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rax], bx
add dl, 100 # instrumentation
lea bx, qword ptr [rdx]
cmovns esi, ebx
cmp bx, -21
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
