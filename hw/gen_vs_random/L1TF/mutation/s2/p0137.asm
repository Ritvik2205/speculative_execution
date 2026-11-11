.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
cmovns rcx, rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
inc bl
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and al, -68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, -1628299544
test edx, 1891691791
test rax, -1576813424
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
