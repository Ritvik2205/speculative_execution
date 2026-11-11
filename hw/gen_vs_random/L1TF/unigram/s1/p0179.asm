.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, ax
xor dil, cl
not ax
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
cmovnl di, di
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
xor bl, sil
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
xor al, 14
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 70
lea di, qword ptr [rbx]
sub edi, 12
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
