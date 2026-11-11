.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe sil
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
setnbe dl
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
add cl, -98 # instrumentation
setp al
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
add al, 66 # instrumentation
cmovnp edx, ebx
inc bx
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
