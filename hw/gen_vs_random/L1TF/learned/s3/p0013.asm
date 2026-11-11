.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
cmovno esi, edi
lea edi, qword ptr [rbx]
sub dl, al
lea di, qword ptr [rsi + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
lea rdx, qword ptr [rcx + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
sbb rax, 717206440
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
