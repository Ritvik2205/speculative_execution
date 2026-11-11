.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 33
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
add esi, -17
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
xor bl, 38
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
mov dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
lea dx, qword ptr [rdx + rdi + 24]
adc cl, -34
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
cmovno edi, edi
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
