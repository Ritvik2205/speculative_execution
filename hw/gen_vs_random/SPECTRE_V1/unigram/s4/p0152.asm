.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
lea rbx, qword ptr [rdi + rdi + 63323]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test eax, edx
seto dl
cmovnz di, ax
xor esi, edx
sub dil, -32
imul rax, rcx, 80
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -76 # instrumentation
adc bl, 19
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
movsx di, dl
lea cx, qword ptr [rbx + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add bl, 88 # instrumentation
sbb bl, 7
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
