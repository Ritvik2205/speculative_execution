.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
sub edi, 72
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sub bl, cl
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
sub al, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 90
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 72 # instrumentation
adc dl, 25
cmovb edx, ebx
lea rbx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
lea ax, qword ptr [rcx + rbx + 26263]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
