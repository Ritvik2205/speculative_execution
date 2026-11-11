.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 2
and rbx, -88
cmovnb rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
add sil, 27 # instrumentation
setnle sil
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 28
jmp .bb_0.1
.bb_0.1:
btr ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovnp bx, di
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
