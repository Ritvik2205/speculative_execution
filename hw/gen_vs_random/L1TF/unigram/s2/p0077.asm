.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
add dil, al
cmp al, dil
lea ax, qword ptr [rbx + rsi + 93]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 7
adc bl, dil
sbb dil, al
cmp cl, -89
cmp edx, 99
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
sub bl, al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
