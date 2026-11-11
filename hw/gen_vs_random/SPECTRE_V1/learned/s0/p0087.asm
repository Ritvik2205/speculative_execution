.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 47
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
jmp .bb_0.2
.bb_0.2:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sub dil, cl
xor bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
