.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
cmovle rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
cmp dl, dil
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
xor rsi, 22
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
xor rbx, rsi
cmp si, -11
xor al, -119
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
sub al, 63
lea bx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
