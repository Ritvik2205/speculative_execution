.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
xchg sil, cl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
bts ax, 201
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmp esi, 110
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdi + rcx + 85]
sub sil, -99
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
sub eax, eax
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
sub bx, 56
xor cl, cl
lea cx, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
