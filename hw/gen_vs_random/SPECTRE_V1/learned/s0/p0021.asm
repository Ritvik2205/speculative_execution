.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
bt ax, 14
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 1
setbe dl
lea cx, qword ptr [rax + rbx + 10]
or bl, al
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax + rdx + 73]
jnb .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
cmovz esi, eax
cmp al, cl
or dl, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
bt rcx, 78
lea si, qword ptr [rdi + rbx]
sbb sil, 126
or cl, al
or sil, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
