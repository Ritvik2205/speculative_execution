.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
add cl, 40 # instrumentation
cmovp rdi, rcx
cmp rax, rax
add al, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
lea rsi, qword ptr [rax + rdi + 20]
mul dil
cmovb ebx, ecx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -128
cmovs rax, rdi
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
movsx eax, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 65
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
