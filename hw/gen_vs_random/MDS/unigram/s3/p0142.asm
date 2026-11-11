.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and dl, 84 # instrumentation
cmovle dx, cx
bts cx, di
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
cmovle rdi, rax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
bt ax, 76
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
