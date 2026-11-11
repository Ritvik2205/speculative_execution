.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
lea edx, qword ptr [rsi + rsi]
mov ebx, 675401645
jmp .bb_0.1
.bb_0.1:
cmovb ecx, ecx
mov sil, 99
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 15
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
sbb bl, -88
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
add al, -117 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
