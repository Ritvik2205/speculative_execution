.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 66
xor cl, dil
and al, 54 # instrumentation
cmovnp si, si
xor eax, 1640090871
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
btc si, bx
xor bl, -27
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
btr cx, 9
cmovs ecx, eax
cmovnbe rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
