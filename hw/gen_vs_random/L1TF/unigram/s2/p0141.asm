.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, 64
add dl, 109 # instrumentation
cmovnb rcx, rdx
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 28
movsx edx, ax
cmovl edx, edi
setb cl
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
xor di, 83
add cl, 35 # instrumentation
sets al
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 68
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
add bl, -45 # instrumentation
cmovs rbx, rbx
cmovnp dx, di
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
