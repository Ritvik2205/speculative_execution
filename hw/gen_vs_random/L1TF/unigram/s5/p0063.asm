.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rcx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 65
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 24
and rdx, 88
xchg sil, dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
cmovno si, dx
or eax, ebx
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
movzx rbx, sil
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
xor bx, 61
sub ax, si
setns cl
or di, 0b1000000000000000 # instrumentation
bsf dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
