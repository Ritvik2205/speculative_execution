.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add edx, 8
xor cx, di
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
cmovp di, dx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 22
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
lea cx, qword ptr [rcx + rdx + 80]
lea rbx, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add cl, -34 # instrumentation
setl dil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
