.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
xor esi, 106
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
mov cl, -72
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
jmp .bb_0.2
.bb_0.2:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 26
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rax, rdx
add eax, -371144449
test rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
