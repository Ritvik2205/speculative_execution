.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
or al, -8
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 24
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
cmovnb rsi, rsi
cmovnbe ax, cx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovnle esi, edx
test sil, 10
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 24
xor si, bx
cmovnl esi, ebx
and dl, 60 # instrumentation
cmovno edx, edx
cmovnle rax, rbx
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
