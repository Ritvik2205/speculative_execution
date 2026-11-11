.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and al, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
bt edi, edi
or rbx, rax
btr ecx, edi
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
or al, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -109
cmovnl rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
bt si, 59
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 17
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
