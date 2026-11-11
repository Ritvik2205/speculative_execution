.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
sbb cl, dl
setp al
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
not edx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and cl, al
adc al, -82
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
jmp .bb_0.2
.bb_0.2:
mul si
sub cl, al
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -89
setnp cl
add dl, bl
bts di, bx
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sets dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
