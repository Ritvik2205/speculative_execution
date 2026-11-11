.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 38
lea ecx, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sbb ebx, ebx
or sil, dl
xor dl, 64
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
sbb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
