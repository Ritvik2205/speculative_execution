.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 19
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
xor cx, bx
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
cmovno eax, esi
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb ax, bx
test edx, 48
bt rdx, rax
or sil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
