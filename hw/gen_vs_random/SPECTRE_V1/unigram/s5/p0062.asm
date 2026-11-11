.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
setb bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
cmovp rcx, rbx
add bl, 78 # instrumentation
adc ax, 98
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
movzx esi, ax
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
test si, bx
add dl, -47 # instrumentation
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
