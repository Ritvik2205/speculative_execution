.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, eax
xchg rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and al, dl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
cmovbe cx, ax
cmp rax, 1682181214
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb dil, 67
test al, 52
test edx, 1479885278
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 42
sub dl, 107
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
sub al, 55
xchg rcx, rbx
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
movsx ax, bl
cmp al, -122
add bl, al
xor dl, -66
xor bl, -126
xchg rcx, rdx
xor al, dl
sub sil, dl
bts di, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
