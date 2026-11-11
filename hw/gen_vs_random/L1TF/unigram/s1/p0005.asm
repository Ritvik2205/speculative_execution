.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
sbb ecx, ebx
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
cmovo ax, bx
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
mov dil, dl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
add bl, 107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 86
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
setns bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
sub dil, -70
dec bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
