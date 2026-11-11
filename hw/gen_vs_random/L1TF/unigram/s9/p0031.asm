.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 62
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
add bl, -77 # instrumentation
cmovns dx, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
sbb cl, -11
mul rax
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 8
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
setb bl
lea ecx, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
