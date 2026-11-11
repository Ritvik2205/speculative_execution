.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sbb al, dl
or bl, dl
sub bl, al
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and dl, -111
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
cmovle bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
