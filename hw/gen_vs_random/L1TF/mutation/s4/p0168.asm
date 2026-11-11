.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
cmovnb edi, esi
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and dl, 32
lea rax, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor rax, rdx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
cmovnp di, bx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
imul edx, esi, -121
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
cmovs rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
