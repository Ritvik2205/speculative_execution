.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 28
imul ecx, ebx, 67
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 18
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
add al, -121 # instrumentation
setno al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
and al, sil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
bt ebx, edi
add dl, -83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
imul edi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
xor sil, -33
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
