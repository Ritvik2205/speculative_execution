.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
add rcx, 17
add cl, 55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], ax
and cl, dil
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sbb cl, al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
not bx
neg esi
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
cmovnbe eax, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
