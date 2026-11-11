.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 30
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rcx, rdx
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
lea rax, qword ptr [rcx]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
