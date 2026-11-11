.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add cl, 11 # instrumentation
cmovns esi, ecx
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 28
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
setnl dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rax, di
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
xor dl, dl
cmp ebx, -33
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
lea ax, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
