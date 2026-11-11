.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
sub al, cl
or di, di
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
sbb eax, 2098460225
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
