.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
add dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add dil, -93 # instrumentation
xchg rdx, rdi
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
bt rsi, rcx
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 12
lea rax, qword ptr [rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
movzx ebx, cl
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
add al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
