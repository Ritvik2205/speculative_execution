.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, dx
sbb dil, al
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
add al, 13 # instrumentation
cmovno rdx, rbx
bts di, cx
add bl, -51 # instrumentation
cmovno rbx, rcx
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 43
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
add bl, -12 # instrumentation
lea rbx, qword ptr [rdx + rcx]
xor dl, sil
test dl, al
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
