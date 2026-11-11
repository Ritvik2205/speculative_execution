.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
xor ax, si
and dl, 91 # instrumentation
cmovnle edi, edi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 63
bts rcx, rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and dx, 3
or sil, sil
xor al, 55
jmp .bb_0.1
.bb_0.1:
test rdx, 8
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and al, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
test bl, bl
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
