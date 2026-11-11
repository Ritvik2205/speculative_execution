.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 62
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
test ebx, 245771113
cmovz edi, ecx
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and dil, -49 # instrumentation
cmovno di, cx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmovs di, cx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 66
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and sil, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
btc dx, 38
cmovnbe dx, cx
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
