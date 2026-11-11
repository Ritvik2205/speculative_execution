.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
sub bl, -96
cmovl esi, eax
lea rsi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
xchg rsi, rax
lea si, qword ptr [rbx + rsi + 54]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 69
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
btr ax, cx
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
test cx, cx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
