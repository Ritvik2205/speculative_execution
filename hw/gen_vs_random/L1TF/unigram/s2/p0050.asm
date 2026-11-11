.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
adc sil, 86
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
add cl, -84 # instrumentation
xchg rdi, rdx
add bl, -53 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
btc rdx, 25
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sub sil, 45
lea dx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
xchg sil, dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
