.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
add dil, dl
imul rsi, rdx
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
add al, al
sub dil, 87
jmp .bb_0.1
.bb_0.1:
movzx eax, ax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
cmovno rax, rbx
add al, 66 # instrumentation
cmovnp eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 95
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
test eax, edx
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
