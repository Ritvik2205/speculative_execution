.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, cl
imul cx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
imul al
sub bl, al
setnz sil
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 42
add cl, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor rbx, -34
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
