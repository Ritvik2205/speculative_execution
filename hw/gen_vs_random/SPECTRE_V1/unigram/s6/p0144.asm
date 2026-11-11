.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
add dl, -94 # instrumentation
or bl, dl
sbb sil, sil
and rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
sub ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
seto dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
