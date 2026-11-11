.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, -109
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
cmovnp rbx, rsi
test cl, 71
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
bt si, bx
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
imul ebx, eax, 16
sub rbx, rdi
and rdx, 88
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 57
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
