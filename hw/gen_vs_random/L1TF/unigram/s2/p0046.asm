.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
movzx rdx, bl
or rcx, 41
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
add al, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
xor dl, sil
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
lea cx, qword ptr [rax + rdi + 28]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 60
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
sbb dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
