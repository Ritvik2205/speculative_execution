.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, 59
xor bl, dil
mov al, al
add bl, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
lea eax, qword ptr [rdi + rsi + 57]
lea si, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
cmovnz ax, ax
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
cmovnp cx, bx
sbb al, al
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
