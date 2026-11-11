.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovno rdx, rsi
cmovl ecx, edi
or al, 74
test sil, cl
test cl, 73
cmovbe dx, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
or dil, bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
xor rbx, 89
or ecx, 47
and dl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
bts rdi, 130
xor al, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
cmovle esi, ecx
bt bx, 253
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
