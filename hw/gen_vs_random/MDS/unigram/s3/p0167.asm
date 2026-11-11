.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edx, esi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 69
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovbe dx, ax
or cl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 85
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 83
and bl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
cmovnb dx, dx
not dl
xor rax, 52
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
