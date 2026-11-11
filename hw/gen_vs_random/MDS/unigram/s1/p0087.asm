.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
bt bx, di
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
cmovle ebx, eax
cmovns ebx, ecx
jmp .bb_0.1
.bb_0.1:
cmovbe di, cx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
cmovnb dx, ax
or dl, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
or sil, sil
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and al, -64 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
