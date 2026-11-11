.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rax + rbx]
lea rdx, qword ptr [rcx]
xor dl, 19
cmp dl, -56
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 88
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
dec cl
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
bts di, 41
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
sbb edi, 10
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
add al, 66 # instrumentation
cmovnp ebx, eax
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
