.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
and dil, 41
cmovp edx, edi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
mul rax
test cl, 70
sub al, dl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
sub esi, ebx
btr ecx, edx
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
bt dx, 16
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
cmovz ecx, edi
sub ebx, eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
