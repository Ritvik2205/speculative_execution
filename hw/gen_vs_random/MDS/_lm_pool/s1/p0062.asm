.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 67
or sil, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 68
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
not cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
test sil, bl
or al, bl
and al, -114
btr ax, bx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
