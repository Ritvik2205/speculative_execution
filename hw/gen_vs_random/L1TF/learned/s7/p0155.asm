.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
lea rax, qword ptr [rbx + rcx + 81]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and bl, sil
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
test al, -82
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
cmp al, -119
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
