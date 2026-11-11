.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 69
neg dl
sub ax, -17837
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
xor al, -89
add cl, al
loop .bb_0.1
jmp .exit_0
.bb_0.1:
movsx dx, cl
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
lea rcx, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
lea eax, qword ptr [rbx + rdx + 51]
and sil, sil
xor rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
