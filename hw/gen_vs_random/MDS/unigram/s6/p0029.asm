.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
cmovnle edx, eax
not sil
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmovp eax, esi
cmovnb rax, rdx
cmovnle eax, edx
test cx, si
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
test al, 66
cmovbe eax, eax
btc dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
cmovnz di, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
btr ax, cx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
