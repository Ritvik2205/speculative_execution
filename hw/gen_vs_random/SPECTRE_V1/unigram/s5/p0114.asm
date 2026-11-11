.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 49
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 93
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
inc bl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add bl, 78 # instrumentation
adc bx, 41
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 30
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
