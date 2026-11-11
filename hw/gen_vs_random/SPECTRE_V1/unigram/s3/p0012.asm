.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
sets dl
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 55
sbb dl, 127
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
adc sil, bl
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mul cl
cmovnp rcx, rdi
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
cmovno rbx, rax
xor rdi, rax
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
