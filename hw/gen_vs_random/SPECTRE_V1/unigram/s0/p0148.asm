.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
mul sil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
setz dl
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add bl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
add dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
