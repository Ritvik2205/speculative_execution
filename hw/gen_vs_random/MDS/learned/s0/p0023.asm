.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, 1749358813
btc rbx, rax
xor al, cl
and cl, 40
and sil, -94
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
cmovb ebx, eax
and cl, -63
or dl, 1 # instrumentation
add dil, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
sbb eax, 2
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
or al, -8
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
