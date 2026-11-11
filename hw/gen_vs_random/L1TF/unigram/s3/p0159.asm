.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
bt rcx, rcx
movzx rdi, di
mul al
cmovz dx, bx
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmovz edx, eax
imul ecx, eax, 7
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnbe rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add cl, -94 # instrumentation
setnb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
