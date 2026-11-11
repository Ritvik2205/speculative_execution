.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and al, -111
cmovno cx, cx
add dx, -51
test dil, 11
cmovno esi, esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 56
bt rsi, rcx
and di, bx
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
sub esi, 62
and si, dx
not dl
lea dx, qword ptr [rcx + rax]
bt rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
