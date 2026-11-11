.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, ecx
test rcx, rax
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
imul edi, esi
sbb dl, -26
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 74
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
xchg rax, rcx
add al, 12 # instrumentation
cmovnb ecx, eax
not cl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
