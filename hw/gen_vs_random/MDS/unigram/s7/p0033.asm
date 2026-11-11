.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or dil, -76
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and al, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
xor al, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
or esi, ebx
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
btc si, 43
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
or dl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
or bl, bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
