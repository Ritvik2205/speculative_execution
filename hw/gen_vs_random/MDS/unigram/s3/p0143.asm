.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edi, eax
test al, al
and cl, 21 # instrumentation
cmovb dx, cx
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovle bx, dx
cmovnz rbx, rax
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and al, 61 # instrumentation
cmovl dx, ax
btc cx, 115
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
btr rsi, 146
btr ax, ax
and cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
