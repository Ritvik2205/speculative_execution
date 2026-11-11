.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
bts ax, si
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
cmovnb cx, di
and al, -115 # instrumentation
cmovl dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and dil, 71
and al, 33 # instrumentation
cmovnle eax, ecx
cmovnb ax, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 55
or sil, sil
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
test bl, 106
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and al, -56 # instrumentation
cmovl rdx, rcx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
