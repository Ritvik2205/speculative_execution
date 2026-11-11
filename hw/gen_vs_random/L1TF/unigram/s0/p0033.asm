.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rbx
sbb cx, dx
mov dil, bl
and dl, -98
or ax, 31571
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 32
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
lea rax, qword ptr [rax + rsi + 77]
cmovb rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
lea edx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
cmovb si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
