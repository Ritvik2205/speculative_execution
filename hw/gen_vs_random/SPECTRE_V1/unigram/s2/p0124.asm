.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
or al, 19
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
add dl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
cmp al, dil
lea rbx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
