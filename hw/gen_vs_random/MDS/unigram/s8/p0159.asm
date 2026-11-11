.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and dl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
and al, -8
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
bts rsi, rcx
or bx, 79
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
test edx, -372470678
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
test rdi, rcx
and al, 42 # instrumentation
cmovz esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
