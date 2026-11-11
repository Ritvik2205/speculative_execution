.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
movsx edx, di
add dl, al
movzx si, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 77
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 49
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
sub rdi, rbx
xor rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
bswap rax
xor rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
