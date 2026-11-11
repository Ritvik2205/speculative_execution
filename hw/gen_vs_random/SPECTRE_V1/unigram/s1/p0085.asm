.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
test ecx, 29
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 55
add sil, 2
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 61
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
cmovz edi, ebx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 18
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
