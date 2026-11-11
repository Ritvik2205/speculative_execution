.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
add al, 27 # instrumentation
sbb esi, eax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
cmovb ecx, edi
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
setnle dl
lea ecx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmp edi, esi
add cl, -38 # instrumentation
setbe dl
cmovp esi, edx
add esi, 95
add dil, 59 # instrumentation
cmovns edx, edi
lea rdx, qword ptr [rdi]
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
