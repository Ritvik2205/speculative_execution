.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 83
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and si, di
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 55
and ax, cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
cmovs ecx, ecx
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
cmovno dx, di
and al, -105 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and dl, -73 # instrumentation
cmovns rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
cmovl rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
