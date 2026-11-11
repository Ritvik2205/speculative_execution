.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, 45
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
cmovl ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
bts cx, dx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
btr esi, 43
btc ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
test al, 91
cmovnz dx, ax
or ebx, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
