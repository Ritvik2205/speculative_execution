.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
cmovno ecx, eax
or sil, -8
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 46
bt rbx, rsi
cmovz rdx, rcx
xor al, cl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or rsi, 46
and cl, 40
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
or al, -8
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
cmovnz rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
