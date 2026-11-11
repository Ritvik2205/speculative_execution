.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
mov dil, dl
and rdx, -98
lea esi, qword ptr [rdx + rsi]
add al, 72 # instrumentation
cmovns bx, di
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
lea eax, qword ptr [rdi + rdi + 41]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
add edi, -91
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
lea rbx, qword ptr [rax + rsi + 52]
test dil, -116
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
