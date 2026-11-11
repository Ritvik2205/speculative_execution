.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp edx, esi
cmovnle rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
not al
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
xor al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
cmovnb di, dx
or rsi, 51
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and cl, -44 # instrumentation
cmovno rax, rdx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
bt rbx, 241
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
