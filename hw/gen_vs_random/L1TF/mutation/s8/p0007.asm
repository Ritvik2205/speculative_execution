.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
or sil, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
cmovns rcx, rbx
inc bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
sub rax, -2089384489
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
test edx, 1891691791
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
test rax, -1576813424
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
