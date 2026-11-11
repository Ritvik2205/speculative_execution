.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, -92
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edx
add bl, -76 # instrumentation
cmovnle dx, cx
or sil, dl
cmovz ebx, eax
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
sub bl, -6
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
sbb ax, dx
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
mul rcx
lea ecx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
