.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 98
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 1 # instrumentation
add bl, -9 # instrumentation
cmovs di, dx
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
sub si, -105
imul dx, si, 57
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and cl, al
setz al
jmp .bb_0.1
.bb_0.1:
cmovle rax, rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
imul esi, eax
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
