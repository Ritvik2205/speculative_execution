.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
and rbx, 2
sub rbx, rsi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
xor dl, dl
cmp dl, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rax + rsi]
setnl dil
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
add cl, -127
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rdi, 68
lea eax, qword ptr [rbx + rbx + 18245]
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
