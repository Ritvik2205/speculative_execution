.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 55
imul rbx, rcx, 54
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
add al, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
mov cl, -72
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
setns dil
and sil, al
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 98
neg rax
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
