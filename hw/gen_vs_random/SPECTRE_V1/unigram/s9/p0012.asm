.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
sub al, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 64
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub dx, -23
add al, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
setnb al
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 99
setnb al
add dl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
bts rdi, rcx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
add dl, -89 # instrumentation
sbb edx, esi
xor sil, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
