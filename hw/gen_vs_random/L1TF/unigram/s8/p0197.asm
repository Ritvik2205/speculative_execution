.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rcx]
cmovns rsi, rdi
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
dec bl
mov edi, ecx
sbb eax, ecx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
setb al
or si, 0b1000000000000000 # instrumentation
bsr ax, si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and ebx, -52
add al, -9 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
add dl, -53 # instrumentation
lea rsi, qword ptr [rdx + rax + 69]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
