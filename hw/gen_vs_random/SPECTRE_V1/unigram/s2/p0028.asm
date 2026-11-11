.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 57
movsx edi, dil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
setno cl
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, sil
mov si, 9258
cwd
lea cx, qword ptr [rax + rbx + 70]
bswap rdi
lea si, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 40
mov al, al
sub esi, -120
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
