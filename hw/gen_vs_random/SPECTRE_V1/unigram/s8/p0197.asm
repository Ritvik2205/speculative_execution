.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, si
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add al, -94 # instrumentation
cmovnle rax, rdx
or rdi, 68
and esi, 77
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
inc rsi
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
sub al, -82
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
xchg dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
