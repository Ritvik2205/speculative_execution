.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 16
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
or edi, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
cmovnz rax, rdi
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor al, al
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
cmovnbe ecx, eax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
cmovnbe si, cx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
cmovs edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
