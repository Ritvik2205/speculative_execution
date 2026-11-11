.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmp bl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add ax, 32140
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add al, -34 # instrumentation
setnp bl
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
