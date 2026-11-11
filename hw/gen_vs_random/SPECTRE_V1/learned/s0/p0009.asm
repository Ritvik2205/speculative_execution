.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
adc ax, di
cmovl rdx, rdx
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 41
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
jb .bb_0.2
jmp .exit_0
.bb_0.2:
lea si, qword ptr [rcx + rcx + 40728]
cmp rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmovz si, si
and bx, di
add dil, 27
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
not al
lea ax, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 28
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
