.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
setno al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 22
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
add dl, 35 # instrumentation
cmovnz rdi, rax
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
dec bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 88
and bl, al
bt eax, 127
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
