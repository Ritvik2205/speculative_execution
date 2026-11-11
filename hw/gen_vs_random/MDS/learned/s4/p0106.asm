.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
or al, -17
test al, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
or dl, dil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and esi, 55
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
