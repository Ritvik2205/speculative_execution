.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
bt si, di
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and ax, 28417
btc rbx, rdx
jmp .bb_0.1
.bb_0.1:
btc rbx, 29
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
cmovno eax, ecx
xor bl, bl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
xor edx, 1
bts rax, 149
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
cmovo si, cx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
or edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
