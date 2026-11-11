.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
lea rcx, qword ptr [rax + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
bswap rcx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
cmovnbe ecx, ebx
add sil, 77 # instrumentation
sbb esi, 59
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], ax
cmovo rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
lea rax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
add ecx, 55
sub rbx, rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
