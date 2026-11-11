.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub esi, 17
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xchg esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
xchg esi, ecx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -88
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovns ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
lea eax, qword ptr [rcx + rcx + 52039]
add ebx, 2
adc edi, 117
or si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
