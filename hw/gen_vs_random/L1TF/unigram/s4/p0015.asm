.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 66 # instrumentation
cmovnp ebx, esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
add dl, 76 # instrumentation
sbb di, 76
and ax, ax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and sil, sil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test eax, edx
cmovnz rbx, rdx
xor dl, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 64
lea ecx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
