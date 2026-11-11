.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 100
lea di, qword ptr [rdi + rdx + 30816]
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
btc rdi, rbx
cmp ebx, esi
test bx, 1
sub cx, 18
add dil, 40 # instrumentation
btc rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
lea rcx, qword ptr [rax + rdx + 48]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
xor rax, rcx
setz sil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and dl, bl
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
