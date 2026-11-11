.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 26
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
lea edi, qword ptr [rdi + rdx]
xor eax, edi
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
cmovnz bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
