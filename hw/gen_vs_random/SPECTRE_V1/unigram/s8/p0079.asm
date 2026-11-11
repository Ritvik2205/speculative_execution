.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
movzx edi, ax
sub cl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub ax, -15315
adc sil, -77
cmovs rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
movzx esi, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
