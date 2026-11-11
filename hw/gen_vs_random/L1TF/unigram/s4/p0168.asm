.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, esi
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
test esi, ecx
xor dil, al
bswap rcx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor sil, sil
dec al
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
