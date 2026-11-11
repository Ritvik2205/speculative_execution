.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and edx, eax
and cl, -44 # instrumentation
cmovno rdx, rsi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
or dil, -41
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and bl, dl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 63
bts ebx, ebx
and al, 84
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
