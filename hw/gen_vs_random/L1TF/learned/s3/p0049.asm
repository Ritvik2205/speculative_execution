.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rax, 363226538
add dl, 18
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
xor rax, rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 94
xor al, 14
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 4
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
bts eax, edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
