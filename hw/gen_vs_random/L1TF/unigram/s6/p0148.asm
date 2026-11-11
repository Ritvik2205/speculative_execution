.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rax
cmp si, 37
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
or rax, rax
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
sub al, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
lea bx, qword ptr [rbx]
add bl, -9 # instrumentation
adc rbx, 65
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
