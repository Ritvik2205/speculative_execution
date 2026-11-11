.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 10
lea ecx, qword ptr [rbx + rsi + 39]
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
cmovp esi, edx
sub bl, -96
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
add cl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmovl rcx, rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
