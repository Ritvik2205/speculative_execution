.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
or edx, edi
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
imul rcx
cmovbe ecx, eax
add bl, -52 # instrumentation
not edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
dec esi
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
cmovnle rdx, rdx
lea rax, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
