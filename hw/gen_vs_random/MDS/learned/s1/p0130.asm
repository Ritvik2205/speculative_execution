.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
and cl, 127
and cl, -63
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 49
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 19
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
bts rax, 117
cmovnle eax, esi
or al, -48
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and al, 73
test dil, -72
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
