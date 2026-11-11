.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
lea ax, qword ptr [rbx + rsi + 100]
cmp rdi, rax
mul cx
or dil, 80
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp di, bx
xor rdx, 52
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
add di, 44
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
lea ecx, qword ptr [rcx]
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
