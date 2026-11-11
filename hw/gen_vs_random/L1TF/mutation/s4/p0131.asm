.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
lea bx, qword ptr [rdx + rbx + 26600]
xchg rsi, rcx
cmovo rbx, rbx
cmovno eax, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
adc al, 70
seto bl
cmp ax, -21455
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
adc al, al
mov bl, cl
jmp .bb_0.1
.bb_0.1:
xchg cl, cl
test al, -32
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
sbb ebx, edx
bts ecx, 164
lea rax, qword ptr [rbx]
movzx edx, dx
xchg dil, bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
btc bx, 173
mul rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
