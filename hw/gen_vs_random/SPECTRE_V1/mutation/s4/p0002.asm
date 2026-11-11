.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, al
lea cx, qword ptr [rdx + rdi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
sbb al, -14
cmp rsi, 53
cmovle dx, di
cmovnb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, al
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
