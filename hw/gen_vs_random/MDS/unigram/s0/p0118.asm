.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
cmovb ax, bx
cmovs ax, bx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
bts esi, esi
xor di, -83
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
or al, al
not si
and rax, 41
test sil, sil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
or eax, -900576213
and rcx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rcx]
bt dx, cx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
