.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -27503
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
xor si, ax
sub edx, 9
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edx
add bl, 59 # instrumentation
cmovns ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rax
setp cl
add al, al
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
