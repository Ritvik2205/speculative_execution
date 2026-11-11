.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
or sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 62
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
cmp cl, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
add bl, 112 # instrumentation
setnbe dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
not cl
mov dil, dil
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
imul rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
