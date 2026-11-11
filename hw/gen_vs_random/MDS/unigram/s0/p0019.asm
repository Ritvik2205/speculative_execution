.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
or ax, -17790
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
test al, -59
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 96
cmovl rdx, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 19
and al, -37
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
btc si, 92
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
bt ecx, ecx
cmovb ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
cmovle bx, bx
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
