.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
setle cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
btc ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmovb edx, edi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 39
and eax, edi
cmp rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
add dil, 84 # instrumentation
btc di, di
xor sil, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
xor eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
