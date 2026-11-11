.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, cl
cmovno di, si
cmovle ax, ax
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and al, al
lea di, qword ptr [rax + rsi + 1]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, rdi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
add al, 64 # instrumentation
cmovnz si, cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
