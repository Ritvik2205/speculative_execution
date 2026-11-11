.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe esi, edi
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 42
lea rsi, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
setz al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
add dl, -8 # instrumentation
lea ecx, qword ptr [rax]
sub esi, ecx
add bl, 89 # instrumentation
sbb dil, dl
lea rdx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
setl al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
