.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
sbb rdi, rdi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
or edi, edx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmovs ax, dx
movzx rdi, al
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
