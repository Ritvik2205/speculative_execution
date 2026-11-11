.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
sbb al, -114
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
cmovle dx, di
cmp rsi, 53
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
