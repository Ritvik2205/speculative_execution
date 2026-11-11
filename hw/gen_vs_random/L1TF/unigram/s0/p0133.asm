.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bx
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea si, qword ptr [rcx + rax + 16]
and rcx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rcx]
sub rbx, 35
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 97
and al, -68
imul edx
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and al, -68
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
