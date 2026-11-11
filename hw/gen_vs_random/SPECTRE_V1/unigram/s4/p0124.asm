.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bx, dx
bts rbx, 25
add dl, 117 # instrumentation
sbb rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
adc bx, 76
lea rcx, qword ptr [rax + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 103 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
movzx edx, dl
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
