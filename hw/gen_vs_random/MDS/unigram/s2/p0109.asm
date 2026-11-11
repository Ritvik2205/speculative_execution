.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -613256812
and dil, 61 # instrumentation
cmovl dx, di
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and cl, cl
cmovbe si, cx
cmovo rdx, rdx
btc dx, 146
btc rbx, 118
cmovnz esi, edi
jmp .bb_0.1
.bb_0.1:
and rax, 41
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
and dl, 32 # instrumentation
cmovnbe edx, edi
or dx, 125
and al, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and dl, 17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
or ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
