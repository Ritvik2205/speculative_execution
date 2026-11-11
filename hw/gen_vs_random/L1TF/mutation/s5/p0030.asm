.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rcx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
cmovno eax, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
sub bl, -96
mov bl, cl
adc al, al
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
adc al, 70
seto bl
cmp ax, -31327
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
lea bx, qword ptr [rdx + rbx + 26600]
cmovo rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
