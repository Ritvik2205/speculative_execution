.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
btr eax, 55
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rcx, rcx
setz cl
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
test rax, rbx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
seto sil
cmovl cx, ax
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
or di, -85
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
