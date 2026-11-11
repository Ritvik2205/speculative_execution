.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
setz dil
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
lea eax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
or al, -57
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
sub sil, bl
dec dx
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
