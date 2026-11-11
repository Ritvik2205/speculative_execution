.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, al
setp al
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
add cl, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
cmovs si, ax
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
xor cl, 89
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
sbb si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
