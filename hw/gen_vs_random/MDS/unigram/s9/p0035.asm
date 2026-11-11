.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and di, di
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
cmovb esi, eax
not dl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 68
and si, bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
cmovb esi, eax
cmovl si, bx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
cmovle ebx, edx
and al, al
and al, bl
cmovl di, cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
