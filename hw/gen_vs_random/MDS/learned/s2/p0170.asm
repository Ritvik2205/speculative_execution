.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
btr cx, ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
test al, 66
test al, bl
and bl, 68
bts esi, 82
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
and ax, -4410
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
