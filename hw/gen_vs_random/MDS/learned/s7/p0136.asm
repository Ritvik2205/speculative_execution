.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
and al, dl
and rax, -1701787862
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
xor cl, 24
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and dl, bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and cl, cl
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
or al, dil
and ecx, -104
test bl, 65
xor dl, 8
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
