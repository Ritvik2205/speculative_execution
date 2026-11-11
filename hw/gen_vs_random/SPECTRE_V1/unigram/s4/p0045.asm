.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
add bl, -118 # instrumentation
cmovp si, si
sets cl
setnl sil
sub al, al
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 65
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
adc al, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 66
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 46
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
