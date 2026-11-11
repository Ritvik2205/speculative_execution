.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
sub rsi, 75
cmovno bx, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
btr bx, di
xor rax, rcx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
cmovb di, ax
cmovnbe ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add dl, 37 # instrumentation
cmovbe dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
