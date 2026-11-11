.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
add al, 105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
add al, 110 # instrumentation
movzx bx, dl
adc bl, -73
add sil, al
lea eax, qword ptr [rbx]
cmovb si, dx
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
lea si, qword ptr [rax + rsi]
or esi, -74
imul rdx
cmovs rdi, rdi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
