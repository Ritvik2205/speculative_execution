.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
test eax, -385619864
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
or al, -87
xor cx, -79
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ecx, qword ptr [rax + rdx]
jnl .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
imul dil
lea cx, qword ptr [rbx + rcx]
sbb edi, 64
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 31
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
