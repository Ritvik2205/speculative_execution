.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
or bl, dl
cmovnb dx, di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
cmovns ax, cx
and sil, -128 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
bts rdx, 200
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
or rbx, -72
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, -63
cmovnbe edx, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test dl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test al, al
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
