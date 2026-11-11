.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
btr ebx, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add si, -5
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or sil, -44
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
cmovb ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
