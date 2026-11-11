.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul al
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 40
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
mul al
add cl, 72 # instrumentation
cmovnl ax, bx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 54
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
cmovo rsi, rsi
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
test dl, -105
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
