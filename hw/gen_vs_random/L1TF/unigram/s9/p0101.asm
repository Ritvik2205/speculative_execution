.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, esi
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 40
add dil, dil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 52
and sil, al
jmp .bb_0.1
.bb_0.1:
cmovnbe rax, rcx
cmovbe eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 91
sub bl, 15
lea rbx, qword ptr [rdx]
or ebx, 54
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
