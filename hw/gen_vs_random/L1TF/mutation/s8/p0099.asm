.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno eax, eax
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
adc al, al
cmp ax, -31327
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
xchg rsi, rcx
cmovo rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
seto bl
lea bx, qword ptr [rdx + rbx + 26600]
mov bl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
adc al, 80
sub bl, 15
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
