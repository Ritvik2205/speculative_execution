.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
cmovnbe rdx, rbx
and bl, 49 # instrumentation
cmovp rdx, rbx
or sil, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
test dil, -80
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
or bl, -62
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
not rdi
or ecx, 61
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and cx, -8
and cl, -76 # instrumentation
cmovl ax, cx
cmovnz eax, eax
xor ecx, ecx
and cl, -19
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
