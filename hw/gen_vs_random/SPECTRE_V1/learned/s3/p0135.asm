.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 38
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
sub cl, -21
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
