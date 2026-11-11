.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 91
cmovnl ax, si
jmp .bb_0.1
.bb_0.1:
add bl, 57
cmovs edx, esi
btr rdx, 194
cmovnl ecx, eax
add dx, di
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
bt rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
cmovbe ax, di
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.2
.bb_0.2:
and dl, al
sub eax, 63
test rdi, 99
cmp dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
