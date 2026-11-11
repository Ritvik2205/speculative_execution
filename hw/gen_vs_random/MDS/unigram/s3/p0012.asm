.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, dx
and bl, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
cmovns rdi, rcx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
xor al, dil
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
test sil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 17
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
cmovl esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rbx, 65
cmovle dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
