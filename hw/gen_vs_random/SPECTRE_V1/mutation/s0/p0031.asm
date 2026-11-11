.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
or eax, -1641258390
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
bt rbx, 244
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
not dl
sub si, 32
setnle al
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
