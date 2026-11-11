.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 11
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
sub ax, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, sil
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
or ax, 18658
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmovnbe rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
