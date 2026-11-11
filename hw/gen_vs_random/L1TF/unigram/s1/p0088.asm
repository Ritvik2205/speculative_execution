.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
sub al, -75
add al, 121 # instrumentation
setnb al
jmp .bb_0.1
.bb_0.1:
add dl, -108 # instrumentation
cmovnle esi, esi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
movzx ecx, dil
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
add bl, 89 # instrumentation
sbb al, dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and dil, cl
xor eax, 965442135
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
cmp rcx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
