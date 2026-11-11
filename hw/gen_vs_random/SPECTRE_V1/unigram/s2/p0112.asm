.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cwde
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor ax, bx
lea dx, qword ptr [rbx + rdi + 84]
lea rdx, qword ptr [rax + rax + 45]
setb bl
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
lea edx, qword ptr [rcx + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
