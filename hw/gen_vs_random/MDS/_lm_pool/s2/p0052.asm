.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, di
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
test eax, 424329527
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 91
not sil
jmp .bb_0.2
.bb_0.2:
cmovnp rcx, rdx
and sil, al
and dl, -73
and rax, -1701787862
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor dil, -3
xor dl, 8
xor dl, al
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
