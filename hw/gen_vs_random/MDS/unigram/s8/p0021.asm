.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ecx, eax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and edx, -44
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
test edi, ebx
and dil, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
or ax, cx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and dl, 120 # instrumentation
cmovnle dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 37
and dil, dil
or al, 37
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
