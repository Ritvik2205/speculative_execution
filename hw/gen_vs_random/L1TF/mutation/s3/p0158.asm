.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
xchg rsi, rcx
cmp ax, 7046
seto bl
lea bx, qword ptr [rdx + rbx + 26600]
adc al, -61
adc al, al
mov bl, cl
cmovo rbx, rbx
sub bl, -96
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
cmovno eax, eax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
