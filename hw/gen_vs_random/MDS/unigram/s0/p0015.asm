.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
btr ax, 193
cmovs edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
test dl, sil
xor dl, 40
cmovz rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and ax, 13090
and dl, 1 # instrumentation
cmovl ax, bx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and bl, 68 # instrumentation
cmovns ax, bx
cmovnb esi, ebx
test cx, 401
not dil
and rbx, 65
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
