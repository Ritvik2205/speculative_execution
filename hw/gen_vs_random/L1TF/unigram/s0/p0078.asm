.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and esi, 75
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
lea esi, qword ptr [rbx]
and al, -111
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
sub dil, 95
xor dil, 2
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
or edi, eax
test esi, 42
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
neg esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmp cx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
