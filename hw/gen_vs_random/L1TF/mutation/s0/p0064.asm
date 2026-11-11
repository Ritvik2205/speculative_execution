.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
cmp ax, 7046
adc al, 70
seto bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
cmovno eax, eax
adc al, al
lea bx, qword ptr [rdx + rbx + 26600]
sub bl, 15
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
xchg rsi, rcx
cmovo rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
