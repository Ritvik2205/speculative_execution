.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdx + rbx + 26600]
sub al, sil
btc cx, bx
movzx rdx, cl
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or bl, -88
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
xor al, dl
lea rsi, qword ptr [rdi + rbx]
add al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
setnbe al
add dl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
