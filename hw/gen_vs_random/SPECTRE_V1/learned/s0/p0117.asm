.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub rax, -132886581
imul dil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
imul ax, bx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
add cl, al
mov al, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
cmp di, 26
imul rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
