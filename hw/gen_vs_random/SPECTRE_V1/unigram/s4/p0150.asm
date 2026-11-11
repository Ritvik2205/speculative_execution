.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, dx
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
or sil, 34
test bx, dx
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 6
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -122
add bl, -46 # instrumentation
cmovbe rbx, rdi
xor rdx, 47
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
imul esi, esi, -106
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 32
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
