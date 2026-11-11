.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, rbx
add al, -117 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], esi
test al, al
inc bl
test ecx, 3
and al, al
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
lea ax, qword ptr [rbx + rdx]
xor ecx, 32
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
btr edx, eax
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
