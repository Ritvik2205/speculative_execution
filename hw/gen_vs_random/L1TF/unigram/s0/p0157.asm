.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rcx + 98]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 7
test bl, al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 52
xor ebx, 15
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 69
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
sub dil, 95
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
neg di
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 10
lea dx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
