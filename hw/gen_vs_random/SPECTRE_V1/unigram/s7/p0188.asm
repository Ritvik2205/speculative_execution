.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
sbb ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
mov cl, sil
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movsx esi, si
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and ax, 2806
xchg dl, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add ebx, -47
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 60
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
