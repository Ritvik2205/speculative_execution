.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rcx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
lea bx, qword ptr [rdx + rbx + 26600]
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
seto bl
cmovo rbx, rbx
adc al, -103
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
sub bl, 15
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
cmovno eax, eax
cmp ax, -14781
mov bl, cl
adc al, al
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
