.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto bl
cmovo rbx, rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
xchg rsi, rcx
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
mov bl, cl
cmp ax, 7046
adc al, al
sub bl, -96
cmovno eax, eax
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
lea bx, qword ptr [rdx + rbx + 26600]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
adc al, 80
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
