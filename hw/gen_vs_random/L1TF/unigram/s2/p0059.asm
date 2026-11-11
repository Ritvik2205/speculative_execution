.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
cmp cx, 29
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
test sil, sil
add cl, 107 # instrumentation
cmovnl ax, ax
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
add cl, 100 # instrumentation
lea dx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 45
xor bl, -5
btr rsi, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
