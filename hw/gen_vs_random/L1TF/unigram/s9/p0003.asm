.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
sub dil, bl
add bl, 119 # instrumentation
cmovle di, si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
lea rax, qword ptr [rsi + rax + 32]
sbb di, 80
lea bx, qword ptr [rdx]
bswap eax
add bl, bl
dec di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
lea esi, qword ptr [rax + rcx + 83]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
